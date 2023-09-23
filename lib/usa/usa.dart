import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/usa/applePie.dart';
import 'package:recipe_kitchen_app/usa/baconEggs.dart';
import 'package:recipe_kitchen_app/usa/burger.dart';
import 'package:recipe_kitchen_app/usa/chickenWings.dart';
import 'package:recipe_kitchen_app/usa/eggsBenedict.dart';
import 'package:recipe_kitchen_app/usa/friedChicken.dart';
import 'package:recipe_kitchen_app/usa/pancakes.dart';
import 'package:recipe_kitchen_app/usa/steak.dart';
import 'package:sticky_headers/sticky_headers.dart';

class UsaPage extends StatefulWidget {
  @override
  _UsaPageState createState() => _UsaPageState();
}

class _UsaPageState extends State<UsaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('American Food Recipes'),
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
              if (nameRecipe[index] == "Burger") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Burger(),
                  ),
                );
              } else if (nameRecipe[index] == "Pancakes") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Pancakes(),
                  ),
                );
              } else if (nameRecipe[index] == "Apple Pie") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ApplePie(),
                  ),
                );
              } else if (nameRecipe[index] == "Fried Chicken") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => friedChicken(),
                  ),
                );
              } else if (nameRecipe[index] == "Eggs Benedict") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EggsBenedict(),
                  ),
                );
              } else if (nameRecipe[index] == "American Steak") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => americanSteak(),
                  ),
                );
              } else if (nameRecipe[index] == "Bacon and Egg Muffin") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => baconEggs(),
                  ),
                );
              } else if (nameRecipe[index] == "Chicken Wings") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chickenWings(),
                  ),
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
    );
  }
}

final nameRecipe = [
  "Burger",
  "Pancakes",
  "Apple Pie",
  "Fried Chicken",
  "Eggs Benedict",
  "American Steak",
  "Bacon and Egg Muffin",
  "Chicken Wings",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/qs7fX7_8K9awW_VuvOVVNI6ky0A=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/TheBurger_Final.jpg",
  "https://images.services.kitchenstories.io/nSBd-YgZIuJLAZGqp72d01PAECA=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/16_01_95_AmericanPancakes_Final.jpg",
  "https://images.services.kitchenstories.io/Z3QrKt6mc4XZ-UcYrMRwBlAUxB8=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/04_25_AmericanApplePie_final.jpg",
  "https://images.services.kitchenstories.io/Dr4DHbcHTjr8iybb_8Gfi5-RW00=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/25_09_FriedChicken_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/5IhNEmAV8mpbnp89Pe68NHJEpAM=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/01_11_EggsBenedict_Final.jpg",
  "https://images.services.kitchenstories.io/FCaQtjazPKa0xkMcVTmCfsZTOcA=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/PerfectSteak_Final.jpg",
  "https://images.services.kitchenstories.io/BZ4VUwntX13CpufGBkv_XZXo6h0=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/RP08_21_10_BaconEggMuffinCups_TitlePicture01.jpg",
  "https://images.services.kitchenstories.io/7v6bzlwOzU_-4LzqfVXYWrnqy4A=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/06_04_ChickenWings_titlePicture.jpg",
];
