import 'package:flutter/material.dart';
import 'task_model.dart';

class Exe08Page extends StatefulWidget {
  const Exe08Page({super.key});

  @override
  State<Exe08Page> createState() => _Exe08PageState();
}

class _Exe08PageState extends State<Exe08Page> {
  List<TaskModel> tasks = [];

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController tarefaController = TextEditingController();

  Widget _buildTaskTile(TaskModel model, int index) {
    TextStyle? vrStyle = null;

    if (model.done)
      vrStyle =
          TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough);

    return ListTile(
      title: Text(model.title, style: vrStyle),
      trailing: Checkbox(
        value: model.done,
        onChanged: (value) {
          setState(() {
            tasks[index].done = (value ?? false);
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 8"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Form(
            key: formState,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: tarefaController,
                      decoration: InputDecoration(
                          labelText: "Tarefa", border: InputBorder.none),
                      validator: (value) {
                        if ((value == null) || (value!.isEmpty))
                          return "O título da tarefa não pode ser nulo";
                      },
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      if (this.formState.currentState!.validate()) {
                        setState(() {
                          tasks.add(TaskModel(title: tarefaController.text));
                        });

                        tarefaController.clear();
                      }
                    },
                    icon: Icon(Icons.save))
              ],
            ),
          ),
          Divider(),
          ListView.builder(
              shrinkWrap: true,
              itemCount: tasks.length,
              itemBuilder: (context, index) =>
                  _buildTaskTile(tasks[index], index)),
        ],
      ),
    );
  }
}
