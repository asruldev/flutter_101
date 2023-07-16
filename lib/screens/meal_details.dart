import 'package:first_app/models/meals.dart';
import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key, required this.meal});

  final Meals meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
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