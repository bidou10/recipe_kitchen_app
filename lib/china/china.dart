import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/china/friedRice.dart';
import 'package:recipe_kitchen_app/china/noodleSalad.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ChinaPage extends StatefulWidget {
  @override
  _ChinaPageState createState() => _ChinaPageState();
}

class _ChinaPageState extends State<ChinaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('China Food Recipes'),
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
              if (nameRecipe[index] == "Fried rice") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => friedRice(),
                  ),
                );
              } else if (nameRecipe[index] == "Noodles salad") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => noodleSalad(),
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
  "Fried rice",
  "Noodles salad",
  "Apple Pie",
  "Fried Chicken",
  "Eggs Benedict",
  "American Steak",
  "Bacon and Egg Muffin",
  "Chicken Wings",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/q7raUWKAZGQi--kPaWdXJ-orZQU=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/16_01_32_EggsFriedRice_Final.jpg",
  "https://images.services.kitchenstories.io/vrXj-RJmUnaFtHgojdwDaDGLPrY=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/R630-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/Z3QrKt6mc4XZ-UcYrMRwBlAUxB8=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/04_25_AmericanApplePie_final.jpg",
  "https://images.services.kitchenstories.io/Dr4DHbcHTjr8iybb_8Gfi5-RW00=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/25_09_FriedChicken_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/5IhNEmAV8mpbnp89Pe68NHJEpAM=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/01_11_EggsBenedict_Final.jpg",
  "https://images.services.kitchenstories.io/FCaQtjazPKa0xkMcVTmCfsZTOcA=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/PerfectSteak_Final.jpg",
  "https://images.services.kitchenstories.io/BZ4VUwntX13CpufGBkv_XZXo6h0=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/RP08_21_10_BaconEggMuffinCups_TitlePicture01.jpg",
  "https://images.services.kitchenstories.io/7v6bzlwOzU_-4LzqfVXYWrnqy4A=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/06_04_ChickenWings_titlePicture.jpg",
];
