import 'package:flutter/material.dart';
import 'package:food_app/model/meal.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Saved'),elevation: 50,duration: Duration(seconds: 8),backgroundColor: Colors.red,));
              },
              icon: const Icon(Icons.star_border))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 350,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  meal.image,
                  fit: BoxFit.cover
                ),
              ),
              const SizedBox(height: 10),
             const Text('Ingredients',style: TextStyle(fontSize: 25)),
              for(String i in meal.ingredients)
                Text(i,style: GoogleFonts.kanit()),
              const SizedBox(height: 10),
              const Text('Steps',style: TextStyle(fontSize: 25)),
              for(String i in meal.steps)
                Text(i,style: GoogleFonts.kanit())
            ],
          ),
        ),
      ),
    );
  }
}
