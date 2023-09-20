import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/india/chickenBiryani.dart';
import 'package:recipe_kitchen_app/india/eggCurry.dart';
import 'package:sticky_headers/sticky_headers.dart';

class IndiaPage extends StatefulWidget {
  @override
  _IndiaPageState createState() => _IndiaPageState();
}

class _IndiaPageState extends State<IndiaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('India Food Recipes'),
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
              if (nameRecipe[index] == "Chicken Biryani") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chickenBiryani(),
                  ),
                );
              } else if (nameRecipe[index] == "Egg Curry") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => eggCurry(),
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
  "Chicken Biryani",
  "Egg Curry",
  "Chinese cabbage rolls",
  "Chinese garlic pancake",
  "Chinese sweet sour omelette",
  "Chinese eggplant",
  "Chinese jiaozi",
  "Chinese cumin lamb",
  "Sweet pork ribs",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/YVIlql4cLAqTF3XTVizFZqZGFJk=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R1669-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/a5pwa-tIMa9uSt7PP-sbkDrL3ts=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2899-photo-final-3x4.jpg",
  "https://images.services.kitchenstories.io/1Eoj4F9hr62zG5aYAjhWDIv5PhE=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R735-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/5qKeEWUJ77gx9T3b3d93QEfBYRs=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2365-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/zJPaalxbVgy89lCB3AO87eSLf4E=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2575-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/CEXipQ8ZPAznZL4J1o5j11XN23k=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/R1202-photo-final.jpg",
  "https://images.services.kitchenstories.io/WNNA0jo3QQasnc10-sfxK2ASzPY=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/A1349-article-photo-_8.jpg",
  "https://images.services.kitchenstories.io/3BYth2w6bJPWI2H6E8vUCoRpTXk=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R1134-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/UhmApqAdh2PtKZjbMhTnqOe4ej0=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/16_01_35_Final.jpg",
];
