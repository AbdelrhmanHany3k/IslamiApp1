import 'package:flutter/material.dart';
import 'package:islami/Hadeth_model.dart';
import 'package:islami/providers/Myprovider.dart';
import 'package:provider/provider.dart';

class HadethDetalis extends StatelessWidget {
  static const String hadethdetails = "hadethdetails";

  @override
  Widget build(BuildContext context) {

    final hadeth = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var provider=Provider.of<MyProvider>(context);

    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(provider.theme==ThemeMode.light ? "assets/images/bg1x.png"
                :"assets/images/bg_dark.png",),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
            appBar: AppBar(
              title:
              Text(hadeth.title,style: Theme.of(context).textTheme.bodyLarge,),
              iconTheme: IconThemeData(),
            ),
            body: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: hadeth.content.length,
              itemBuilder: (context, index) {
                return Text(
                  hadeth.content[index],
                  style: Theme.of(context).textTheme.bodySmall
                );
              },
            ),
        )
    );
  }
}
