import 'package:flutter/material.dart';
import 'package:virality_new/activityFeed/ActivityFeedPage.dart';
import 'package:virality_new/home/Home.dart';
// import 'package:virality/login/ui/login_page.dart';
import 'package:virality_new/login/ui/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Virality",
      theme: ThemeData(
          primaryColor: const Color(0xffd5e4e1),
          colorScheme: const ColorScheme.light()),
      home: const ActivityFeedPage(),
    );
  }
}
