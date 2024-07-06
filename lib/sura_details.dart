import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c11_str/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SuraDetails";

  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraModel model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadSuraFile(model.index);
    }

    return Stack(
      children: [
        Image.asset("assets/images/main_bg.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              model.suraName,
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                    "${verses[index]} ($index)",
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.inder(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  );
                },
                itemCount: verses.length,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> loadSuraFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");

    // 5.5.5.5.5.5.5.55.654.5.
    List<String> suraLines = sura.split("\n");
    print(suraLines);
    verses = suraLines;
    setState(() {});
  }
}
