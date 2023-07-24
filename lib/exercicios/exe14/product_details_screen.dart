import 'package:flutter/material.dart';
import 'product_models.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  ProductDetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.nome),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 90, 90, 90).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 16,
                    offset: Offset(0, 7),
                  ),
                ],
              ),
              child: Image.network(
                product.image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Descrição:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(product.descricao),
                SizedBox(height: 16),
                Text(
                  'Preço:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('R\$ ${product.preco.toStringAsFixed(2)}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
