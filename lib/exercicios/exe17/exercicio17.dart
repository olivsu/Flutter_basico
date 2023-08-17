import 'package:flutter/material.dart';
import 'package:flutter_basic/exercicios/exe17/models.dart';

class Exe17Page extends StatelessWidget {
  final List<News> newsList = [
    News('Título da Notícia 1', 'Descrição da notícia 1'),
    News('Título da Notícia 2', 'Descrição da notícia 2'),
    News('Título da Notícia 3', 'Descrição da notícia 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notícias'),
      ),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsDetailScreen(news: newsList[index]),
                ),
              );
            },
            child: Hero(
              tag: 'news${newsList[index].title}',
              child: Card(
                margin: EdgeInsets.all(8.0),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(newsList[index].title),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class NewsDetailScreen extends StatelessWidget {
  final News news;

  NewsDetailScreen({required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Notícia'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Hero(
          tag: 'news${news.title}',
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(news.description),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
