import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c11_str/hadeth_details.dart';
import 'package:islami_c11_str/home/home.dart';
import 'package:islami_c11_str/my_theme_data.dart';
import 'package:islami_c11_str/sura_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      themeMode: ThemeMode.light,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
