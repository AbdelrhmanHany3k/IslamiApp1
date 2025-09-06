import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/sura_model.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key});

  static const String suranames = "s";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> suralines = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;

    if (suralines.isEmpty) {
      loadsurafile(model.index);
    }

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
          backgroundColor: Colors.transparent,
          title: Text(
            model.suraname,
            style: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: suralines.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: suralines.length,
          itemBuilder: (context, index) {
            return Card(
              color: const Color(0xFFEFE7DC),
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.brown[300],
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        "${index + 1}",
                        style: GoogleFonts.elMessiri(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        suralines[index],
                        style: GoogleFonts.elMessiri(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> loadsurafile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    setState(() {
      suralines = sura.split("\n");
    });
  }
}
