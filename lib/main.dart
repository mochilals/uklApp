import 'package:cinema_app/views/cinema.dart';
import 'package:cinema_app/views/home_page.dart';
import 'package:cinema_app/views/mytiket.dart';
import 'package:cinema_app/views/register.dart';
import 'package:cinema_app/views/splash.dart';
import 'package:cinema_app/views/ticket.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root widget of the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/s',
        routes: {
          '/s': (_) => SplashScreen(),
          '/l': (_) => RegisterPage(),
          '/h': (_) => HomePage(),
          '/b': (_) => CinemaPage(),
          '/t': (_) => Tiket(),
          '/a': (_) => MyTicketPage(),
        });
  }
}
