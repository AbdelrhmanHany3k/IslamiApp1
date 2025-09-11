import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/My_theme_data.dart';
import 'package:islami/providers/Myprovider.dart';
import 'package:provider/provider.dart';
import '../bottom sheets/Theme bottom.dart';
import '../bottom sheets/Language bottom.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pr = Provider.of<MyProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("theme".tr()),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const ThemeBottomSheet(),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: primarycolor),
              ),
              width: double.infinity,
              child: Text(
                pr.theme == ThemeMode.light ? "light".tr() : "dark".tr(),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Text("language".tr()),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => LanguageBottomSheet(),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: primarycolor),
              ),
              width: double.infinity,
              child: Text(
                context.locale.languageCode == "en"
                    ? "english".tr()
                    : "arabic".tr(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
