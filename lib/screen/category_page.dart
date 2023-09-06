import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/model/category.dart';
import 'package:food_app/screen/meals_page.dart';
import 'package:food_app/widget/category_item.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 3 / 2
          ),
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return CategoryItem(category: categoryList[index], onClick: (category) {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MealsPage(category: category)));
            },);
          },
        ),
      ),
    );
  }
}
