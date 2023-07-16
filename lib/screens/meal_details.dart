import 'package:first_app/models/meals.dart';
import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key, required this.meal, required this.onToggleFavotiteMeal});

  final Meals meal;
  final void Function(Meals meal) onToggleFavotiteMeal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(onPressed: (){
            onToggleFavotiteMeal(meal);
          }, icon: const Icon(Icons.star))
        ],
      ),
      body: Image.network(
        meal.imageUrl,
        height: 300,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}