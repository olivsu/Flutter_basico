import 'package:flutter_basic/exercicios/exe12/screen/home_screen.dart';
import 'package:flutter/material.dart';

class Exe12Page extends StatelessWidget {
  const Exe12Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
