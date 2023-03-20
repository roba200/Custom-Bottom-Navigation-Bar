import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  int currentIndex = 0;
  List screens = [
    Center(
      child: Text(
        "Home",
        style: TextStyle(fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        "Search",
        style: TextStyle(fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.currentIndex == 0
          ? Colors.pinkAccent
          : widget.currentIndex == 1
              ? Colors.deepPurpleAccent
              : Colors.greenAccent,
      body: widget.screens[widget.currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: widget.currentIndex == 0
            ? Colors.pinkAccent
            : widget.currentIndex == 1
                ? Colors.deepPurpleAccent
                : Colors.greenAccent,
        items: [Icon(Icons.home), Icon(Icons.search), Icon(Icons.person)],
        onTap: ((index) {
          setState(() {
            widget.currentIndex = index;
          });
        }),
      ),
    );
  }
}
