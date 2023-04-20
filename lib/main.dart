import 'package:flutter/material.dart';
import 'package:thirty_days_of_flutter/pages/home_page.dart';
import 'package:thirty_days_of_flutter/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thirty_days_of_flutter/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeroute: (context) => HomePage(),
        MyRoutes.loginroute:(context) => LoginPage(),
      },
    );
  }
}
