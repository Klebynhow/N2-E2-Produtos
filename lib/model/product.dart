import "package:flutter/material.dart";

class Product {
  final String name;
  final String description;
  final double price;
  final int quantity;
  final IconData icon;

  const Product({
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.icon
  });
}