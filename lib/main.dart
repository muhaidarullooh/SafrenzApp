import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safrenz/screens/navigation/nav_screen_owner.dart';
import 'package:safrenz/screens/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:safrenz/providers/theme_provider.dart';
import 'package:safrenz/screens/navigation/nav_screen_tenant.dart';

void main() {
  runApp(const Initializer());
}

class Initializer extends StatelessWidget {
  const Initializer({super.key});

  Future<ThemeProvider> initializeTheme() async {
    final provider = ThemeProvider();
    await provider.loadThemeFromPrefs(); // Panggil loader manual
    return provider;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ThemeProvider>(
      future: initializeTheme(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Tampilkan splash sementara nunggu prefs
          return const MaterialApp(
            home: Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        } else {
          return ChangeNotifierProvider<ThemeProvider>.value(
            value: snapshot.data!,
            child: const MyApp(),
          );
        }
      },
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      ),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      home: const NavScreenOwner(),
    );
  }
}
