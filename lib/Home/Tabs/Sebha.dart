import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counter = 0;

  List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "أستغفر الله"
  ];
  int currentIndex = 0;

  void increaseCounter() {
    setState(() {
      counter++;
    });
  }

  void changeZikr() {
    setState(() {
      counter = 0;
      currentIndex = (currentIndex + 1) % azkar.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: increaseCounter,
          child: Image.asset("assets/images/seb7a.png", height: 300),
        ),

        Text(
          "عدد التسبيحات",
          textAlign: TextAlign.center,
          style:
          GoogleFonts.elMessiri(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        Text(
          "$counter",
          textAlign: TextAlign.center,
          style: GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            onPressed: changeZikr,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffB7935F),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: Text(
              azkar[currentIndex],
              style: GoogleFonts.elMessiri(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}