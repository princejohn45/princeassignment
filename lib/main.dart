import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'screens/sign_in_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Lemon Green as MaterialColor
  static const MaterialColor primaryLemonGreen = MaterialColor(
    0xFF32CD32,
    <int, Color>{
      50: Color(0xFFE5F7E5),
      100: Color(0xFFBFF0BF),
      200: Color(0xFF99E799),
      300: Color(0xFF73DD73),
      400: Color(0xFF4DD34D),
      500: Color(0xFF32CD32),
      600: Color(0xFF2BB52B),
      700: Color(0xFF239C23),
      800: Color(0xFF1C821C),
      900: Color(0xFF116611),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Auth Example",
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryLemonGreen,
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[100],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryLemonGreen,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
          ),
        ),
      ),
      home: const SignInScreen(),
    );
  }
}
