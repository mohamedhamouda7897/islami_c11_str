import 'package:flutter/material.dart';

import 'package:islami_c11_str/hadeth_details.dart';
import 'package:islami_c11_str/home/home.dart';
import 'package:islami_c11_str/my_theme_data.dart';
import 'package:islami_c11_str/providers/my_provider.dart';
import 'package:islami_c11_str/providers/sura_details_provider.dart';

import 'package:islami_c11_str/sura_details.dart';
import 'package:provider/provider.dart';

import 'bottom_sheets/theme_bottomsheet.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => MyProvider(),
    ),
    // ChangeNotifierProvider(
    //   create: (context) => SuraDetailsProvider(),
    // )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      themeMode: pro.themeMode,
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
