import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c11_str/hadeth_details.dart';
import 'package:islami_c11_str/hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/ahadeth_bg.png",
          height: 219,
        ),
        Divider(),
        Text(
          "Ahadeth",
          textAlign: TextAlign.center,
          style: GoogleFonts.elMessiri(
            fontSize: 25,
          ),
        ),
        Divider(),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetailsScreen.routeName,
                      arguments: allAhadeth[index]);
                },
                child: Text(
                  allAhadeth[index].title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.elMessiri(
                    fontSize: 20,
                  ),
                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        )
      ],
    );
  }

  // trim()
  String x = "Mohamed";

  String x1 = "   Mohamed   ";

  String x2 = "Mohamed   ";

  String x3 = "    Mohamed";

  String x4 = "Moha  med";

  loadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> ahadeth = value.split("#");

      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];

        List<String> hadethLines = hadeth.trim().split("\n");

        String title = hadethLines[0];

        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
        print(title);
      }

      setState(() {});
    });
  }
}
