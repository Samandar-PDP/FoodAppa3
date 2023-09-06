import 'package:flutter/material.dart';
import 'package:food_app/model/meal.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal, required this.onClick});

  final Meal meal;
  final void Function(Meal meal) onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: InkWell(
        onTap: () {
         onClick(meal);
        },
        borderRadius: BorderRadius.circular(12),
        child: Card(
          clipBehavior: Clip.hardEdge,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Stack(
            children: [
              Image.network(meal.image, fit: BoxFit.cover,height: 250,width: double.infinity,),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.black54,
                  child: Center(
                    child: Column(
                      children: [
                        Text(meal.title,
                            style: const TextStyle(fontSize: 20, color: Colors.white)),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _iconName(Icons.timer, '${meal.time} min'),
                            _iconName(Icons.stacked_bar_chart, meal.type),
                            _iconName(Icons.attach_money_rounded,
                                meal.price.toString()),
                          ],
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconName(IconData icon, String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Icon(icon), Text(title)],
    );
  }
}
