import 'package:flutter/material.dart';
import 'package:tabbar/main_screen.dart';

void main() {
  runApp(LauncherApp());
}

ColorScheme kColorScheme = ColorScheme.fromSeed(
    seedColor: Color.fromARGB(255, 25, 38, 85));

class LauncherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          useMaterial3: true,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.primaryContainer,
          foregroundColor: kColorScheme.primary
        )
      ),
      themeMode: ThemeMode.system,
      home: SafeArea(child: MainScreen()),
    );
  }
}