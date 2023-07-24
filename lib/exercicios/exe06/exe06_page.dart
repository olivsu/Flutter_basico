import 'package:flutter/material.dart';

class Exe06Page extends StatefulWidget {
  const Exe06Page({super.key});

  @override
  State<Exe06Page> createState() => _Exe06PageState();
}

class _Exe06PageState extends State<Exe06Page> {
  var formKey = GlobalKey<FormState>();
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.security,
                size: 128,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 50, left: 20, right: 20, bottom: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Login"),
                  validator: (value) {
                    if (value!.isEmpty) return "O login é obrigatório";
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Senha",
                      prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            this.hidePassword = !this.hidePassword;
                          });
                        },
                        icon: Icon((this.hidePassword
                            ? Icons.visibility
                            : Icons.visibility_off)),
                      )),
                  obscureText: this.hidePassword,
                  validator: (value) {
                    if (value!.length < 6)
                      return "O campo senha deve possuir ao menos 6 caracteres";

                    if (value!.length > 12)
                      return "O campo senha deve possuir no máximo 12 caracteres";
                  },
                ),
              ),
              TextButton(
                  onPressed: () {
                    if (this.formKey.currentState!.validate()) {}
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
