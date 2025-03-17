import 'package:bodysync/page0.dart';
import 'package:flutter/material.dart';
import 'launch_page.dart';
import 'homepage.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BodySync',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LaunchPage(),
        '/home': (context) => const Page0(),
        '/myhomepage': (context) => const MyHomePage(title: 'Home Page'),
        LoginPage.routeName: (context) => const LoginPage(),
      },
    );
  }
}
