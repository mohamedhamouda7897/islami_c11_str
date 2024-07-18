import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c11_str/providers/my_provider.dart';
import 'package:islami_c11_str/providers/sura_details_provider.dart';
import 'package:islami_c11_str/sura_model.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = "SuraDetails";

  SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SuraModel model = ModalRoute.of(context)?.settings.arguments as SuraModel;

    var pro = Provider.of<MyProvider>(context);
    // var suraPro = Provider.of<SuraDetailsProvider>(context);

    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider()..loadSuraFile(model.index),
      builder: (context, child) {
        var suraPro = Provider.of<SuraDetailsProvider>(context);
        // if (suraPro.verses.isEmpty) {
        //   suraPro.loadSuraFile(model.index);
        // }
        return Stack(
          children: [
            Image.asset(pro.themeMode == ThemeMode.dark
                ? "assets/images/main_dark_bg.png"
                : "assets/images/main_bg.png"),
            Scaffold(
              appBar: AppBar(
                title: Text(
                  model.suraName,
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Card(
                  shape: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      )),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Text(
                        "${suraPro.verses[index]} ($index)",
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.inder(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      );
                    },
                    itemCount: suraPro.verses.length,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
