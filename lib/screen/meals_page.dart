import 'package:flutter/material.dart';
import 'package:food_app/model/category.dart';
import 'package:food_app/model/meal.dart';
import 'package:food_app/screen/detail_page.dart';
import 'package:food_app/widget/meal_item.dart';

class MealsPage extends StatelessWidget {
  const MealsPage({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.title)),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: meals[category.id].length,
          itemBuilder: (context, index) {
            return MealItem(meal: meals[category.id][index], onClick: (meal) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(meal: meal)));
            },);
          },
        ),
      ),
    );
  }
}
