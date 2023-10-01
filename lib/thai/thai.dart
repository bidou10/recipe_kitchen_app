import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/thai/thaiChickenNoodle.dart';
import 'package:recipe_kitchen_app/thai/thaiChickenPotato.dart';
import 'package:recipe_kitchen_app/thai/thaiClassic.dart';
import 'package:recipe_kitchen_app/thai/thaiGreenCurry.dart';
import 'package:recipe_kitchen_app/thai/thaiHolyBasil.dart';
import 'package:recipe_kitchen_app/thai/thaiLemongrass.dart';
import 'package:recipe_kitchen_app/thai/thaiMushroomOmelette.dart';
import 'package:recipe_kitchen_app/thai/thaiShrimp.dart';
import 'package:sticky_headers/sticky_headers.dart';

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
      body: ListView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index) => StickyHeader(
          header: ListTile(
            title: Text(
              '${nameRecipe[index]}',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            trailing: Text('Click here for Details of ${nameRecipe[index]}'),
            tileColor: Colors.amber,
            onTap: () {
              if (nameRecipe[index] == "Pad Thai Shrimp") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThaiShrimp(),
                  ),
                );
              } else if (nameRecipe[index] == "Thai Stir Fried Noodles") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThaiClassic(),
                  ),
                );
              } else if (nameRecipe[index] == "Thai Red Curry") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThaiClassic(),
                  ),
                );
              } else if (nameRecipe[index] ==
                  "Thai Holy basil and pork stir fry") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThaiHolyBasil(),
                  ),
                );
              } else if (nameRecipe[index] == "Thai mushroom tuffed omelette") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThaiMushroomOmelette(),
                  ),
                );
              } else if (nameRecipe[index] == "Thai chicken noodles soup") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => thaiChickenNoodle(),
                  ),
                );
              } else if (nameRecipe[index] == "Lemongrass meatballs") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => thaiLemongrass(),
                  ),
                );
              } else if (nameRecipe[index] == "Thai chicken sweet potato") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => thaiChickenPotato()),
                );
              } else if (nameRecipe[index] == "Thai green curry shrimp") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => thaiGreenCurry()),
                );
              }
            },
          ),
          content: Image.network(
            imageUrls[index],
            fit: BoxFit.cover,
            width: double.infinity,
            height: 220,
          ),
        ),
      ),
// j'ai laisser l'ancien code pour ceux qui veulent faire un index sur le stickyHeader , cela va plus vite
// mais pour moi je veux creer un lien on tap différent chaque élement donc je vais utiliser un ListView
    );
  }
}

final nameRecipe = [
  "Pad thai shrimp",
  "Pad thai classic",
  "Red curry",
  "Minced prok",
  "Fried Chicken",
  "Green Papaya",
  "Curry noodle",
  "Cut",
  "Pad see"
];

final imageUrls = [
  "https://images.services.kitchenstories.io/T1x90P_WjjoE-JvJvbdUGWTUNFM=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2042-photo-final-002-16x9.jpg",
  "https://images.services.kitchenstories.io/OmFK5XJFzzF4iHAnUB1WYiUuORI=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R1569-photo-final-02.jpg",
  "https://images.services.kitchenstories.io/gqslNuqfstd1T9mtoE64Q1mTmgw=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2960-final-photo-2.jpg",
  "https://images.services.kitchenstories.io/GaL2UgQSez4gVzBLRYdd-5h1pDo=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2592-final-photo.jpg",
  "https://images.services.kitchenstories.io/UAzPu-TxYoZOUKiSQi2aK6RsJE0=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R1881-photo-final-4.jpg",
  "https://images.services.kitchenstories.io/cJ8vygOwgm8sjiCnY_GjBhTQ2GQ=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/ThaiChickenNoodleSoup_Final.jpg",
  "https://images.services.kitchenstories.io/kFQUdE54EOvyVczP3z__XIULAT4=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2676-final-photo-_2.jpg",
  "https://images.services.kitchenstories.io/grYIGt5CdDqeTCZLShfMlnu9jT0=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/R666-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/7OFl-ilAoCeWSvrX5nvo2MRRJYY=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/09_01_ThaiGreenCurryWithShrimp_titlePicture.jpg",
];
