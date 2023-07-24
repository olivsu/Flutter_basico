import 'package:flutter/material.dart';
import '../models/user_model.dart';

class NewUserPage extends StatelessWidget {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  NewUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formState,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Bem vindo ao formulário de cadastro de usuário."),
                Text("Preencha as informações abaixo para iniciar o cadastro."),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: nomeController,
                  decoration: InputDecoration(labelText: "Nome"),
                  validator: (value) {
                    if (value == null) return "O campo nome não pode ser nulo";

                    if (value!.trim().isEmpty)
                      return "O campo nome não pode estar em branco";
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: "E-mail"),
                  validator: (value) {
                    if (value == null)
                      return "O campo e-mail não pode ser nulo";

                    if (value!.trim().isEmpty)
                      return "O campo email não pode estar em branco";
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formState.currentState!.validate()) {
                        Navigator.of(context).pushNamed("/welcome",
                            arguments: UserModel(
                                nome: nomeController.text,
                                email: emailController.text));
                      }
                    },
                    child: Text("Salvar"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
