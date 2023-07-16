import 'package:first_app/models/meals.dart';
import 'package:first_app/screens/meal_details.dart';
import 'package:first_app/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, this.title, required this.meals, required this.onToggleFavotiteMeal});

  final String? title;
  final List<Meals> meals;

  void selectMeal(BuildContext context, Meals meal) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => MealDetailsScreen(meal: meal, onToggleFavotiteMeal: onToggleFavotiteMeal,)));
  }

  final void Function(Meals meal) onToggleFavotiteMeal;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) => MealItem(
        meal: meals[index],
        onSelectMeal: (ctx, meal) {
          selectMeal(ctx, meal);
        },
      ),
    );

    if (meals.isEmpty) {
      content = const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Oh no...'),
            SizedBox(
              height: 16,
            ),
            Text('Try selecting another category')
          ],
        ),
      );
    }

    if (title == null) {
      return content;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
