import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c11_str/my_theme_data.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

bool isDark = false;

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.light);
                Navigator.pop(context);

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Light",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: MyThemeData.primaryColor),
                  ),
                  Icon(
                    Icons.done,
                    color: MyThemeData.primaryColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dark",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  // Icon(
                  //   Icons.done,
                  //   // color: MyThemeData.primaryColor,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
