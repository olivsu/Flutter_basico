import 'package:flutter/material.dart';

class Exe05Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 5'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/santa_claus.jpg',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 16),
            Image.asset(
              'assets/images/christmas_tree.jpg',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
