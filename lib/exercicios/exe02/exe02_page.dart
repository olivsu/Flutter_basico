import 'package:flutter/material.dart';

class Exe02Page extends StatelessWidget {
  const Exe02Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 02'),
      ),
      body: const Column(
        children: [
          Text('Hello Word'),
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 40),
            child: Text('Hello Word'),
          ),
          Text('Hello Word'),
        ],
      ),
    );
  }
}
