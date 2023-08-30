import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/mexican/mexicanChickenRice.dart';
import 'package:recipe_kitchen_app/mexican/tacosVegan.dart';
import 'package:recipe_kitchen_app/thai/thaiChickenNoodle.dart';
import 'package:recipe_kitchen_app/thai/thaiChickenPotato.dart';
import 'package:recipe_kitchen_app/thai/thaiClassic.dart';
import 'package:recipe_kitchen_app/thai/thaiGreenCurry.dart';
import 'package:recipe_kitchen_app/thai/thaiHolyBasil.dart';
import 'package:recipe_kitchen_app/thai/thaiLemongrass.dart';
import 'package:recipe_kitchen_app/thai/thaiMushroomOmelette.dart';
import 'package:recipe_kitchen_app/thai/thaiRedCurry.dart';
import 'package:recipe_kitchen_app/thai/thaiShrimp.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class MexicanPage extends StatefulWidget {
  @override
  _MexicanPageState createState() => _MexicanPageState();
}

class _MexicanPageState extends State<MexicanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Mexican Food Recipes'),
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
              if (nameRecipe[index] == "Tacos Vegan") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TacosVegan(),
                  ),
                );
              } else if (nameRecipe[index] == "Mexican Chicken Rice") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MexicanChickenRice(),
                  ),
                );
              } else if (nameRecipe[index] == "") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThaiRedCurry(),
                  ),
                );
              } else if (nameRecipe[index] == "") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThaiHolyBasil(),
                  ),
                );
              } else if (nameRecipe[index] == "") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThaiMushroomOmelette(),
                  ),
                );
              } else if (nameRecipe[index] == "") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => thaiChickenNoodle(),
                  ),
                );
              } else if (nameRecipe[index] == "tacos Vegan") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => thaiLemongrass(),
                  ),
                );
              } else if (nameRecipe[index] == "tacos Vegan") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TacosVegan()),
                );
              } else if (nameRecipe[index] == "Mexican Chicken Rice") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MexicanChickenRice()),
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
  "Tacos Vegan",
  "Mexican Chicken Rice",
  "",
  "",
  "",
  "",
  "",
  "",
  ""
];

final imageUrls = [
  "https://images.services.kitchenstories.io/Hl6qpHaLmvu6rnGE4Ma-BIFVcEM=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R1007-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/rJQvT4BhBPtVrCJUr7QE7hxWMgs=/640x0/filters:quality(80)/images.kitchenstories.io/recipeImages/16_01_98_Final.jpg",
  "https://images.services.kitchenstories.io/gqslNuqfstd1T9mtoE64Q1mTmgw=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2960-final-photo-2.jpg",
  "https://images.services.kitchenstories.io/GaL2UgQSez4gVzBLRYdd-5h1pDo=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2592-final-photo.jpg",
  "https://images.services.kitchenstories.io/UAzPu-TxYoZOUKiSQi2aK6RsJE0=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R1881-photo-final-4.jpg",
  "https://images.services.kitchenstories.io/cJ8vygOwgm8sjiCnY_GjBhTQ2GQ=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/ThaiChickenNoodleSoup_Final.jpg",
  "https://images.services.kitchenstories.io/kFQUdE54EOvyVczP3z__XIULAT4=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2676-final-photo-_2.jpg",
  "https://images.services.kitchenstories.io/grYIGt5CdDqeTCZLShfMlnu9jT0=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/R666-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/7OFl-ilAoCeWSvrX5nvo2MRRJYY=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/09_01_ThaiGreenCurryWithShrimp_titlePicture.jpg",
];
