import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quanli/screens/login_screens.dart';
import 'screens/home_screens.dart';
import 'screens/forgot_pasword_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF00D09E),
        scaffoldBackgroundColor: const Color(0xFFE0F7F7),
        fontFamily: 'Poppins',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF00D09E),
          elevation: 0,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
