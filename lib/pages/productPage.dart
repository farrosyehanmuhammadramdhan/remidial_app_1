// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  List<Product> myproductlist = [
    Product(imageUrl: 'images/background.png', name: 'Orange', price: '15', stock: '1000'),
    Product(imageUrl: 'images/background.png', name: 'Apple', price: '20', stock: '1000'),
    Product(imageUrl: 'images/background.png', name: 'Banana', price: '5', stock: '1000'),
    Product(imageUrl: 'images/background.png', name: 'Mango', price: '15', stock: '1000'),
    Product(imageUrl: 'images/background.png', name: 'Orange', price: '10', stock: '1000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: myproductlist.length,
        itemBuilder: (context, index) {
          final product = myproductlist[index];
          return ListTile(
            leading: Image.asset('${product.imageUrl}'),
            title: Text('${product.name}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${product.stock} Ready Stock'),
                Text('\$ ${product.price}', style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            trailing: Icon(Icons.favorite_border_outlined),
          );
        },
      ),
    );
  }
}

class Product {
  String? imageUrl;
  String? name;
  String? price;
  String? stock;

  Product({this.imageUrl, this.name, this.price, this.stock});
}
