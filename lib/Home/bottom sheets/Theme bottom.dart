import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/providers/Myprovider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pr = Provider.of<MyProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              pr.changeThemeMode(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("light".tr(), style: Theme.of(context).textTheme.bodyMedium),
                Icon(
                  Icons.done,
                  color: pr.theme == ThemeMode.light
                      ? Colors.greenAccent
                      : Colors.transparent,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              pr.changeThemeMode(ThemeMode.dark);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("dark".tr(), style: Theme.of(context).textTheme.bodyMedium),
                Icon(
                  Icons.done,
                  color: pr.theme == ThemeMode.dark
                      ? Colors.greenAccent
                      : Colors.transparent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}