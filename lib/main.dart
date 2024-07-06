import 'package:flutter/material.dart';
import 'package:islami_c11_str/home/home.dart';
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
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
