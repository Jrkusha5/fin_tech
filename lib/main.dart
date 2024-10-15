

import 'package:fintech/pages/home.dart';
import 'package:fintech/pages/my_card.dart';
import 'package:fintech/pages/scan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FinTech App',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 16, 80, 90)),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex=0;

final List<Widget> pages=[
  const Home(),
  const MyCardPage(),
  const ScanPage()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentIndex],
    );
  }
}
