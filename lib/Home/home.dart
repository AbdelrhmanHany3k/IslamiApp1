import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/Home/Tabs/Quran.dart';
import 'package:islami/Home/Tabs/Sebha.dart';
import 'package:islami/Home/Tabs/Settings.dart';
import 'package:islami/Home/Tabs/ahadeth.dart';
import 'package:islami/My_theme_data.dart';
import 'package:islami/main.dart';
import 'package:islami/providers/Myprovider.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  static const String home = "Homescreen";

  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Stack(children: [
      Image.asset(provider.theme==ThemeMode.light ? "assets/images/bg1x.png"
       :"assets/images/bg_dark.png",
      width: double.infinity,
      fit: BoxFit.fill,),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text("islami".tr(),style: Theme.of(context).textTheme.bodyLarge,),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (value) {
            selectedindex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/quran.png")),
              label: " ",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/sebha.png")),
              label: " ",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
              label: " ",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: " ",
            ),
          ],
        ),
        body: tabs[selectedindex],
      ),
    ]);
  }

  List<Widget> tabs = [
    Quran(),
    Sebha(),
    Ahadeth(),
    SettingsTab()];
}
