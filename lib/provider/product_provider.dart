import 'package:flutter/material.dart';

class Product {
  String name;
  double price;
  final String description;
  String image;

  Product(
      {required this.name,
      required this.price,
      required this.image,
      required this.description});
}

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void updateProduct(int index, Product product) {
    _products[index] = product;
    notifyListeners();
  }

  void deleteProduct(int index) {
    _products.removeAt(index);
    notifyListeners();
  }
}
