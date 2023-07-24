import 'package:flutter_basic/exercicios/exe11/screen/welcome.dart';
import 'package:flutter_basic/exercicios/exe11/screen/new_user.dart';
import 'package:flutter/material.dart';

class Exe11Page extends StatelessWidget {
  const Exe11Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => NewUserPage(),
        "/welcome": (context) => WelcomePage(),
      },
    );
  }
}
