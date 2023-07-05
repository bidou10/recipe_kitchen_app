import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/recipe_card.dart';

class ThaiPage extends StatefulWidget {
  @override
  _ThaiPageState createState() => _ThaiPageState();
}

class _ThaiPageState extends State<ThaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Thai Food Recipes'),
          ],
        ),
      ),
      body: RecipeCard(
        title: 'Pad thai',
        rating: '4.9',
        cookTime: '30 min',
        thumbnailUrl:
            'https://cdn.pixabay.com/photo/2015/09/04/10/40/pad-thai-921884_1280.jpg',
      ),
    );
  }
}
