import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization_getx/ui/translation_page.dart';

import 'utils/translation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: const Locale("uz", "UZ"),
      fallbackLocale: const Locale("en", "EN"),
      home: TranslationPage(),
    );
  }
}
