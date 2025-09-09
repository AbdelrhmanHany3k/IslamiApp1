import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Hadeth_model.dart';

class HadethDetalis extends StatelessWidget {
  static const String hadethdetails = "hadethdetails";

  @override
  Widget build(BuildContext context) {
    final hadeth = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg1x.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title:
              Text(hadeth.title, style: GoogleFonts.elMessiri(fontSize: 24)),
              backgroundColor: Colors.transparent,
              centerTitle: true,
            ),
            body: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: hadeth.content.length,
              itemBuilder: (context, index) {
                return Text(
                  hadeth.content[index],
                  style: GoogleFonts.elMessiri(fontSize: 20, height: 1.6),
                  textAlign: TextAlign.center,
                );
              },
            ),
        )
    );
  }
}
