import 'package:flutter/material.dart';
import '../models/person_model.dart';

class ConfirmScreen extends StatelessWidget {
  final PersonModel person;

  const ConfirmScreen({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.question_mark,
              color: Colors.grey,
            ),
            SizedBox(height: 50),
            Text(
              "Deseja realmente excluir ${person.name}?",
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(height: 25),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text("Sim")),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text("Não"))
          ],
        ),
      ),
    );
  }
}
