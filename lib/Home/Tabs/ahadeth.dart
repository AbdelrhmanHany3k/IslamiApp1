import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Hadeth_model.dart';
import 'package:islami/Home/Hadeth_detalis.dart';

class Ahadeth extends StatefulWidget {
  Ahadeth({super.key});

  @override
  State<Ahadeth> createState() => _AhadethState();
}

class _AhadethState extends State<Ahadeth> {
  List<HadethModel>allahadeth=[];

  @override
  Widget build(BuildContext context) {

    if (allahadeth.isEmpty){
    loadhadethfile();
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Image.asset("assets/images/hadith_header.png", height: 219),
      Divider(thickness: 3, color: Color(0xffB7935F)),
      Text(
        "Ahadeth",
        textAlign: TextAlign.center,
        style: GoogleFonts.elMessiri(
            fontSize: 26, fontWeight: FontWeight.w600),
      ),
      Divider(thickness: 3, color: Color(0xffB7935F)),
      Expanded(
        child: ListView.separated(separatorBuilder: (context, index) => Divider()
          ,itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                HadethDetalis.hadethdetails,
                arguments: allahadeth[index],
              );
            },
            child: Text(allahadeth[index].title,style: GoogleFonts.elMessiri(
                fontSize: 26, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,),
          );
        },
        itemCount: allahadeth.length,),
      )
      ]
    );
  }

  loadhadethfile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> ahadeth = value.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth1 = ahadeth[i].trim();
        List<String> hadethlines = hadeth1.split("\n");

        String title = hadethlines[0];
        hadethlines.removeAt(0);

        List<String> content = hadethlines;

        HadethModel hadethModel1 = HadethModel(title, content);
        allahadeth.add(hadethModel1);
      }
      setState(() {});
    });
  }
}
