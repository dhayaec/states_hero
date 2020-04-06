import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  bool isLiked;

  Product({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.price,
    this.isLiked = false,
  });
}
