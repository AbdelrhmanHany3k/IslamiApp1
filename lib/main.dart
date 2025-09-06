import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/Sura_details.dart';
import 'package:islami/Home/home.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.home,
      routes:{
        Homescreen.home : (context)=> Homescreen(),
        SuraDetails.suranames : (context)=> SuraDetails()
      },
    );
  }
}