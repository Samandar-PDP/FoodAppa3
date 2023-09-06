import 'package:flutter/material.dart';
import '../model/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category, required this.onClick});

  final Category category;
  final void Function(Category category) onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick(category);
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.70),
              category.color.withOpacity(.60),
            ]
          ),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(category.title,style: const TextStyle(color: Colors.white,fontSize: 20),),
        ),
      ),
    );
  }
}
