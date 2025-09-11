import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/My_theme_data.dart';
import 'package:islami/providers/Myprovider.dart';
import 'package:islami/sura_model.dart';
import 'package:provider/provider.dart';

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
    var provider = Provider.of<MyProvider>(context);

    if (suralines.isEmpty) {
      loadsurafile(model.index);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.theme == ThemeMode.light
              ? "assets/images/bg1x.png"
              : "assets/images/bg_dark.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(model.suraname,
              style: Theme.of(context).textTheme.bodyLarge),
          iconTheme: IconThemeData(),
        ),
        body: suralines.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: suralines.length,
          itemBuilder: (context, index) {
            return Card(
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
                        style: Theme.of(context).textTheme.bodySmall,
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
