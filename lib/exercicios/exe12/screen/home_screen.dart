import 'package:flutter_basic/exercicios/exe12/screen/confirm_screen.dart';
import 'package:flutter/material.dart';
import '../models/person_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PersonModel> persons = [
    PersonModel(name: "Ateobaldo", email: "ateobaldo@bol.com.br"),
    PersonModel(name: "Anacleto", email: "anacleto@outlook.com"),
    PersonModel(name: "Jupira", email: "jupira@gmail.com")
  ];

  Future<bool?> _podeExcluir(PersonModel personModel) async {
    var result = await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ConfirmScreen(person: personModel),
    ));

    if (!mounted) return null;

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de pessoas"),
      ),
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(persons[index].name),
            subtitle: Text(persons[index].email),
            trailing: IconButton(
              onPressed: () {
                _podeExcluir(persons[index]).then((value) {
                  if (value == null) return;

                  if (value) {
                    setState(() {
                      persons.removeAt(index);
                    });
                  }

                  print("Recebi resposta do método");
                });

                print("Acabou de executar o botão");
              },
              icon: Icon(Icons.delete, color: Colors.red),
            ),
          );
        },
      ),
    );
  }
}
