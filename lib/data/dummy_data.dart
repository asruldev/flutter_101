import 'package:first_app/models/category.dart';
import 'package:first_app/models/meals.dart';
import 'package:flutter/material.dart';

const availableCategories = [
  Category(
    id: 'C1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'C2',
    title: 'Asian',
    color: Colors.yellow,
  ),
  Category(
    id: 'C3',
    title: 'Java',
    color: Colors.pink,
  ),
  Category(
    id: 'C4',
    title: 'Cepat Saji',
    color: Colors.green,
  ),
  Category(
    id: 'C5',
    title: 'Spaicy',
    color: Colors.red,
  ),
];

const dummyMeals = [
  Meals(
    id: 'M1', 
    categories: ['C1', 'C2'], 
    title: 'Spagety with tomato', 
    imageUrl: 'https://media.istockphoto.com/id/860931464/photo/rice-in-a-bowl-on-a-white-background.jpg?s=612x612&w=0&k=20&c=UZXMVCopJgmfcSzgAs14yVxUJ8MaNIPVdWDkjXzRL6o=', 
    ingredients: [
      'kecap',
      'garam'
    ], 
    step: [
      'Makan dulu aja'
    ], 
    duration: 20, 
    isGlutenFree: false, 
    isLactoseFree: false, 
    isVegan: true, 
    isVegatarian: true, 
    complexity: Complexity.simple, 
    affordability: Affordability.pricey
  ),
  Meals(
    id: 'M2', 
    categories: ['C2'], 
    title: 'Apple pie', 
    imageUrl: 'https://media.istockphoto.com/id/491090528/photo/cooked-rice.jpg?s=612x612&w=0&k=20&c=WNeDEUEioyyk6FQZQrVMrtFMDVdtbwtK951eZ8q5FNY=', 
    ingredients: [
      'kecap',
      'garam'
    ], 
    step: [
      'Makan dulu aja'
    ], 
    duration: 20, 
    isGlutenFree: false, 
    isLactoseFree: false, 
    isVegan: true, 
    isVegatarian: true, 
    complexity: Complexity.simple, 
    affordability: Affordability.pricey
  ),
];