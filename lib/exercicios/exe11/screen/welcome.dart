import '../models/user_model.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    UserModel user = ModalRoute.of(context)!.settings.arguments as UserModel;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.lightGreenAccent,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                  "Muito obrigado por se cadastrar em nosso sistema, ${user.nome}"),
              SizedBox(
                height: 20,
              ),
              Text("Um e-mail de confirmação foi enviado para ${user.email}")
            ],
          ),
        ),
      ),
    );
  }
}
