import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Themes"),
          SizedBox(
            height: 12,
          ),
          Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Text("Light")),
          SizedBox(
            height: 45,
          ),
          Text("Language"),
          SizedBox(
            height: 12,
          ),

          Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Text("Arabic"))
        ],
      ),
    );
  }
}
