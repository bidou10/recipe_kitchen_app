import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/thai/thaiClassic.dart';
import 'package:recipe_kitchen_app/thai/thaiHolyBasil.dart';
import 'package:recipe_kitchen_app/thai/thaiMushroomOmelette.dart';
import 'package:recipe_kitchen_app/thai/thaiRedCurry.dart';
import 'package:recipe_kitchen_app/thai/thaiShrimp.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

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
                    builder: (context) => ThaiRedCurry(),
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
  "Pad Thai Shrimp",
  "Thai Stir Fried Noodles",
  "Thai Red Curry",
  "Thai Holy basil and pork stir fry",
  "Thai mushroom tuffed omelette",
  "Green Papaya",
  "Curry noodle",
  "Cut",
  "Pad see"
];

final imageUrls = [
  "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2009/4/14/2/FNM060109WE031_s4x3.jpg.rend.hgtvcom.616.462.suffix/1371589419461.jpeg",
  "https://images.services.kitchenstories.io/OmFK5XJFzzF4iHAnUB1WYiUuORI=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R1569-photo-final-02.jpg",
  "https://images.services.kitchenstories.io/gqslNuqfstd1T9mtoE64Q1mTmgw=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2960-final-photo-2.jpg",
  "https://images.services.kitchenstories.io/GaL2UgQSez4gVzBLRYdd-5h1pDo=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2592-final-photo.jpg",
  "https://images.services.kitchenstories.io/UAzPu-TxYoZOUKiSQi2aK6RsJE0=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R1881-photo-final-4.jpg",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/Spicy-Green-Papaya-Salad.webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/Thai-Coconut-Curry-Noodle-Soup.webp",
  "https://images.asiahighlights.com/allpicture/2022/02/ca9d3c345fb14950adf2d939_cut_750x400_264.webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/Pad-See-Ew.webp",
];
