import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    String currentLang = context.locale.languageCode;

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () async {
              context.setLocale(const Locale('en'));
              final prefs = await SharedPreferences.getInstance();
              prefs.setString("lang", "en");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("english".tr()),
                Icon(
                  Icons.done,
                  color: currentLang == "en"
                      ? Colors.greenAccent
                      : Colors.transparent,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () async {
              context.setLocale(const Locale('ar'));
              final prefs = await SharedPreferences.getInstance();
              prefs.setString("lang", "ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("arabic".tr()),
                Icon(
                  Icons.done,
                  color: currentLang == "ar"
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
