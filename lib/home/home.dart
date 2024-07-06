import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c11_str/home/tabs/ahadeth.dart';
import 'package:islami_c11_str/home/tabs/quran.dart';
import 'package:islami_c11_str/home/tabs/radio.dart';
import 'package:islami_c11_str/home/tabs/sebha.dart';
import 'package:islami_c11_str/home/tabs/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HOme";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/images/main_bg.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Islami",
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Color(0xFFB7935F),
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/moshaf_blue.png")),
                label: "dfg",
                backgroundColor: Color(0xFFB7935F)),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                label: "dfg"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
                label: "dfg"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                label: "dfg"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: Icon(Icons.settings),
                label: ""),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadethTab(),
    SettingsTab()
  ];
}
