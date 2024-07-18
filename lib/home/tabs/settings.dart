import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_c11_str/bottom_sheets/language_bottomsheet.dart';
import 'package:islami_c11_str/bottom_sheets/theme_bottomsheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Themes",style: Theme.of(context).textTheme.bodyLarge,),
          SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                isDismissible: true,
                context: context,
                builder: (context) => ThemeBottomSheet(),
              );
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Text("Light")),
          ),
          SizedBox(
            height: 45,
          ),
          Text("Language"),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => LanguageBottomSheet(),
              );
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Text("Arabic")),
          )
        ],
      ),
    );
  }
}
