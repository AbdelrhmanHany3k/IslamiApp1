import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/Home/Hadeth_detalis.dart';
import 'package:islami/Home/Sura_details.dart';
import 'package:islami/Home/home.dart';
import 'package:islami/My_theme_data.dart';
import 'package:islami/providers/Myprovider.dart';
import 'package:provider/provider.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      ChangeNotifierProvider(create: (context) => MyProvider(),
      child: EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/Translations', // <-- change the path of the translation files
      child: Myapp()))
  );
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      themeMode: provider.theme,
      theme: MyThemeData.lighttheme,
      darkTheme: MyThemeData.darktheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.home,
      routes:{
        Homescreen.home : (context)=> Homescreen(),
        SuraDetails.suranames : (context)=> SuraDetails(),
        HadethDetalis.hadethdetails:(context)=> HadethDetalis(),
      },
    );
  }
}