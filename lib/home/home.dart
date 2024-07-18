import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c11_str/home/tabs/ahadeth.dart';
import 'package:islami_c11_str/home/tabs/quran.dart';
import 'package:islami_c11_str/home/tabs/radio.dart';
import 'package:islami_c11_str/home/tabs/sebha.dart';
import 'package:islami_c11_str/home/tabs/settings.dart';
import 'package:islami_c11_str/providers/my_provider.dart';
import 'package:provider/provider.dart';

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
    var pro = Provider.of<MyProvider>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(pro.themeMode == ThemeMode.dark
                  ? "assets/images/main_dark_bg.png"
                  : "assets/images/main_bg.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Islami",
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/moshaf_blue.png")),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    const SebhaTab(),
    const RadioTab(),
    AhadethTab(),
    const SettingsTab()
  ];
}
