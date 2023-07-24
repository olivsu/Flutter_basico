import 'exe10_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Exe10Page());
}

class Exe10Page extends StatelessWidget {
  const Exe10Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/1",
      routes: {
        "/1": (context) => BookPage(pageNumber: 1),
        "/2": (context) => BookPage(pageNumber: 2),
        "/3": (context) => BookPage(pageNumber: 3, lastPage: true),
      },
    );
  }
}
