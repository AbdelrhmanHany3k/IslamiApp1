import 'package:flutter/material.dart';

class Ahadeth extends StatelessWidget {
  const Ahadeth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Image.asset("assets/images/hadith_header.png", height: 227),
      Divider(thickness: 3, color: Color(0xffB7935F)),
      ]
    );
  }
}
