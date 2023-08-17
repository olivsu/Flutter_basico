import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/home_page.dart';
import 'exercicios/exe01/exe01_page.dart';
import 'exercicios/exe02/exe02_page.dart';
import 'exercicios/exe03/exe03_page.dart';
import 'exercicios/exe04/exe04_page.dart';
import 'exercicios/exe05/exe05_page.dart';
import 'exercicios/exe06/exe06_page.dart';
import 'exercicios/exe07/exe07_page.dart';
import 'exercicios/exe08/exe08_page.dart';
import 'exercicios/exe09/exe09_page.dart';
import 'exercicios/exe10/exe10_page.dart';
import 'exercicios/exe11/exe11_page.dart';
import 'exercicios/exe12/exe12_page.dart';
import 'exercicios/exe13/exe13_page.dart';
import 'exercicios/exe14/exercicio14.dart';
import 'exercicios/exe15/exercicio15.dart';
import 'exercicios/exe16/exercicio16.dart';
import 'package:flutter_basic/exercicios/exe17/exercicio17.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => HomePage(),
      '/Exe01': (context) => Exe01Page(),
      '/Exe02': (context) => Exe02Page(),
      '/Exe03': (context) => Exe03Page(),
      '/Exe04': (context) => Exe04Page(),
      '/Exe05': (context) => Exe05Page(),
      '/Exe06': (context) => Exe06Page(),
      '/Exe07': (context) => Exe07Page(),
      '/Exe08': (context) => Exe08Page(),
      '/Exe09': (context) => Exe09Page(),
      '/Exe10': (context) => Exe10Page(),
      '/Exe11': (context) => Exe11Page(),
      '/Exe12': (context) => Exe12Page(),
      '/Exe13': (context) => Exe13Page(),
      '/Exe14': (context) => Exe14Page(),
      '/Exe15': (context) => Exe15Page(),
      '/Exe16': (context) => Exe16Page(),
      '/Exe17': (context) => Exe17Page(),
    });
  }
}
