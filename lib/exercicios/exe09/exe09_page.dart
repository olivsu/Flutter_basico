import 'exe09_page2.dart';
import 'package:flutter/material.dart';

class Exe09Page extends StatelessWidget {
  const Exe09Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 9"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Essa é a tela 1"),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Exe9Page(),
                  ));
                },
                child: Text("Ir para a tela 2"))
          ],
        ),
      ),
    );
  }
}
