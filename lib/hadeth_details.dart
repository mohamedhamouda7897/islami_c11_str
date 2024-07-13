import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c11_str/hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "HadethDetails";

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/images/main_bg.png"))),
      child: Scaffold(

        appBar: AppBar(
          title: Text(
            model.title,

          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                  model.content[index],
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.elMessiri(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                );
              },
              itemCount: model.content.length,
            ),
          ),
        ),
      ),
    );
  }
}
