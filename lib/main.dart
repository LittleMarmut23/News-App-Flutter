import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projek1/provider/darkmode.dart';
import 'package:projek1/provider/providerFollowed.dart';
import 'package:projek1/provider/providerFontSize.dart';
import 'package:projek1/screen/register_kirim_code.dart';
import 'package:projek1/screen/setting_page.dart';
import 'package:projek1/screen/tentang_kami.dart';
import 'package:provider/provider.dart';
import 'package:projek1/data/data.dart';
import 'package:projek1/screen/Tabs/templateKotakBerita2.dart';
import 'package:projek1/screen/Tabs/templateKotakBerita.dart';
import 'package:projek1/screen/artikel_page.dart';
import 'package:projek1/screen/forgetpass_page.dart';
import 'package:projek1/screen/home.dart';
import 'package:projek1/screen/login_page.dart';
import 'package:projek1/screen/profile_page.dart';
import 'package:projek1/screen/register_page.dart';
import 'package:projek1/screen/privacy_policy_page.dart';
import 'package:projek1/screen/topik_page.dart';
import 'package:projek1/widget/searchWidget.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => DarkThemeProvider()),
      ChangeNotifierProvider(create: (_) => FollowedProvider()),
      ChangeNotifierProvider(create: (_) => FontSizeProvider())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DarkThemeProvider>(context);
    return MaterialApp(
      theme: themeProvider.darkTheme == true
          ? themeProvider.dark
          : themeProvider.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: //setting_page()
            home(initialTabIndex: 1),
      ),
    );
  }
}
