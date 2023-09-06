import 'package:flutter/material.dart';

class Category {
  String title;
  int id;
  Color color;
  Category({required this.id, required this.title, required this.color});
}
final categoryList = [
  Category(id: 0, title: 'Quyuq ovqat', color: Colors.deepOrange),
  Category(id: 1, title: 'Suyuq ovqat', color: Colors.blueAccent),
  Category(id: 2, title: 'Parxez', color: Colors.deepPurple),
  Category(id: 3, title: 'Fast-food', color: Colors.black54),
  Category(id: 4, title: 'Ichimliklar', color: Colors.redAccent),
  Category(id: 5, title: 'Shirinliklar', color: Colors.green),
];