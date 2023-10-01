import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/china/cabbageRolls.dart';
import 'package:recipe_kitchen_app/china/chineseOmelette.dart';
import 'package:recipe_kitchen_app/china/chinesePancakes.dart';
import 'package:recipe_kitchen_app/china/cuminLamb.dart';
import 'package:recipe_kitchen_app/china/eggPlant.dart';
import 'package:recipe_kitchen_app/china/friedRice.dart';
import 'package:recipe_kitchen_app/china/jiaozi.dart';
import 'package:recipe_kitchen_app/china/noodleSalad.dart';
import 'package:recipe_kitchen_app/china/porkRibs.dart';
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
              } else if (nameRecipe[index] == "Chinese cabbage rolls") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => cabbageRolls(),
                  ),
                );
              } else if (nameRecipe[index] == "Chinese garlic pancake") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chinesePancakes(),
                  ),
                );
              } else if (nameRecipe[index] == "Chinese sweet sour omelette") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chineseOmlette(),
                  ),
                );
              } else if (nameRecipe[index] == "Chinese eggplant") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => eggPlant(),
                  ),
                );
              } else if (nameRecipe[index] == "Chinese jiaozi") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => jiaozi(),
                  ),
                );
              } else if (nameRecipe[index] == "Chinese cumin lamb") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => cuminLamb(),
                  ),
                );
              } else if (nameRecipe[index] == "Sweet pork ribs") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => porkRibs(),
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
  "Chinese cabbage rolls",
  "Chinese garlic pancake",
  "Chinese sweet sour omelette",
  "Chinese eggplant",
  "Chinese jiaozi",
  "Chinese cumin lamb",
  "Sweet pork ribs",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/q7raUWKAZGQi--kPaWdXJ-orZQU=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/16_01_32_EggsFriedRice_Final.jpg",
  "https://images.services.kitchenstories.io/vrXj-RJmUnaFtHgojdwDaDGLPrY=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/R630-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/1Eoj4F9hr62zG5aYAjhWDIv5PhE=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R735-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/5qKeEWUJ77gx9T3b3d93QEfBYRs=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2365-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/zJPaalxbVgy89lCB3AO87eSLf4E=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2575-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/CEXipQ8ZPAznZL4J1o5j11XN23k=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/R1202-photo-final.jpg",
  "https://images.services.kitchenstories.io/WNNA0jo3QQasnc10-sfxK2ASzPY=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/A1349-article-photo-_8.jpg",
  "https://images.services.kitchenstories.io/3BYth2w6bJPWI2H6E8vUCoRpTXk=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R1134-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/UhmApqAdh2PtKZjbMhTnqOe4ej0=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/16_01_35_Final.jpg",
];
