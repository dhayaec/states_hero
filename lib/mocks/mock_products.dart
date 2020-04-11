import 'dart:math';

import 'package:faker/faker.dart';
import 'package:states_hero/models/product.dart';

List<Product> mockProducts = [
  Product(
    id: 1,
    name: 'One',
    description: 'One description',
    price: 44.99,
  ),
  Product(
    id: 2,
    name: 'Two',
    description: 'Two description',
    price: 50.99,
  ),
  Product(
    id: 3,
    name: 'Three',
    description: 'Three description',
    price: 55.99,
  ),
];

List<Product> getProducts() {
  List<Product> products = [
    Product(
      id: 1,
      name: 'Product One',
      description: 'description Product One',
      price: 55.99,
      isSaved: true,
    ),
    Product(
      id: 2,
      name: 'Product Two',
      description: 'description Product Two',
      price: 55.99,
      isSaved: true,
    ),
    Product(
      id: 3,
      name: 'Product One',
      description: 'description Product Two',
      price: 55.99,
      isSaved: false,
    ),
    Product(
      id: 4,
      name: 'Product One',
      description: 'description Product One',
      price: 55.99,
      isSaved: false,
    ),
    Product(
      id: 5,
      name: 'Product One',
      description: 'description Product One',
      price: 55.99,
      isSaved: true,
    ),
  ];

  return products.toList();
}
