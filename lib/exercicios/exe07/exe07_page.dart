import 'package:flutter/material.dart';
import 'convidado_models.dart';

class Exe07Page extends StatefulWidget {
  const Exe07Page({super.key});

  @override
  State<Exe07Page> createState() => _Exe07PageState();
}

class _Exe07PageState extends State<Exe07Page> {
  List<ConvidadoModel> convidados = [
    ConvidadoModel(
        nome: "Apolonio",
        imagem:
            "https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2017/01/formacao_sera-que-sou-uma-pessoa-que-tem-virtudes.jpg"),
    ConvidadoModel(
        nome: "B",
        imagem:
            "https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2017/01/formacao_sera-que-sou-uma-pessoa-que-tem-virtudes.jpg"),
    ConvidadoModel(
        nome: "Antetecmon",
        imagem:
            "https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2017/01/formacao_sera-que-sou-uma-pessoa-que-tem-virtudes.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: convidados.length,
        itemBuilder: (context, index) {
          ConvidadoModel conv = convidados[index];

          return ListTile(
            leading: Image.network(conv.imagem, height: 64, width: 64),
            title: Text(conv.nome),
            onTap: () {
              print("Nome do convidado: ${convidados[index].nome}");
              print("Imagem do convidado: ${convidados[index].imagem}");
            },
          );
        },
      ),
    );
  }
}
