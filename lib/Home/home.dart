import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Home/Tabs/Quran.dart';
import 'package:islami/Home/Tabs/Sebha.dart';
import 'package:islami/Home/Tabs/Settings.dart';
import 'package:islami/Home/Tabs/ahadeth.dart';

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
    return Stack(children: [
      Image.asset("assets/images/bg1x.png",
      width: double.infinity,
      fit: BoxFit.fill,),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Islami",
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (value) {
            selectedindex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Color(0xFF242424),
          unselectedItemColor: Color(0xFFF8F8F8),
          backgroundColor: Color(0xFFB7935F),
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/quran.png")),
              label: " ",
              backgroundColor: Color(0xFFB7935F),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/sebha.png")),
              label: " ",
              backgroundColor: Color(0xFFB7935F),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
              label: " ",
              backgroundColor: Color(0xFFB7935F),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: " ",
              backgroundColor: Color(0xFFB7935F),
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
