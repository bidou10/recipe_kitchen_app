import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/mexican/GuacamoleTuna.dart';
import 'package:recipe_kitchen_app/mexican/burrito.dart';
import 'package:recipe_kitchen_app/mexican/chickenEnchiladas.dart';
import 'package:recipe_kitchen_app/mexican/chickenFajitas.dart';
import 'package:recipe_kitchen_app/mexican/mexicanChickenRice.dart';
import 'package:recipe_kitchen_app/mexican/mexicanPastaSalad.dart';
import 'package:recipe_kitchen_app/mexican/quinoa.dart';
import 'package:recipe_kitchen_app/mexican/tacosVegan.dart';
import 'package:recipe_kitchen_app/mexican/veggieBurrito.dart';
import 'package:recipe_kitchen_app/thai/thaiMushroomOmelette.dart';
import 'package:sticky_headers/sticky_headers.dart';

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
                  MaterialPageRoute(builder: (context) => MexicanChickenRice()),
                );
              } else if (nameRecipe[index] == "Chicken Fajitas") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChickenFajitas()),
                );
              } else if (nameRecipe[index] == "Burrito") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Burrito()),
                );
              } else if (nameRecipe[index] == "Veggie Burrito") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VeggieBurrito(),
                  ),
                );
              } else if (nameRecipe[index] == "Chicken enchiladas") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChickenEnchiladas()),
                );
              } else if (nameRecipe[index] == "Quinoa") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quinoa()),
                );
              } else if (nameRecipe[index] == "Mexican Pasta Salad") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MexicanPastaSalad()),
                );
              } else if (nameRecipe[index] == "Guacaomole Tuna Steak") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GuacamoleTuna()),
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
  "Chicken Fajitas",
  "Burrito",
  "Veggie Burrito",
  "Chicken enchiladas",
  "Quinoa",
  "Mexican Pasta Salad",
  "Guacaomole Tuna Steak"
];

final imageUrls = [
  "https://images.services.kitchenstories.io/Hl6qpHaLmvu6rnGE4Ma-BIFVcEM=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R1007-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/rJQvT4BhBPtVrCJUr7QE7hxWMgs=/640x0/filters:quality(80)/images.kitchenstories.io/recipeImages/16_01_98_Final.jpg",
  "https://images.services.kitchenstories.io/ChIwzhNKp34zIc3kFl9g_TEtoj0=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/ChickenFajitas_Final.jpg",
  "https://images.services.kitchenstories.io/TqkoDNI2_YE-D94bndG-jTWNpDI=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/RP04_21_04_BreakfastBurito_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/YEtGFACep8A1ptcBlya7fV6jzkI=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2453-photo-title-1.jpg",
  "https://images.services.kitchenstories.io/jTP-z70gXF4ykBm71JdPBgQnLfE=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/06_05_ChickenEnchiladas_4x3.jpg",
  "https://images.services.kitchenstories.io/4NSKYR0iW7r5S9yKHWfI8a9_o6g=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R623-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/uttSPcDYSvSk3gDDEwTCZEyQ_QY=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailResizedImages/R2978-abtesting2.original.jpg",
  "https://images.services.kitchenstories.io/d3oQU0oWuHozTy1DDqdS8EzinWk=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R771-photo-final-4x3.jpg",
];
