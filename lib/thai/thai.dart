import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/thai/thaiClassic.dart';
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
              } else if (nameRecipe[index] == "Red curry") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThaiRedCurry(),
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
  "Red Curry",
  "Minced pork",
  "Fried Chicken",
  "Green Papaya",
  "Curry noodle",
  "Cut",
  "Pad see"
];

final imageUrls = [
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/pad-thai.webp",
  "https://www.awesomecuisine.com/wp-content/uploads/2015/12/pad-see-ew.jpg",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/thai-red-curry(1).webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/Minced-Pork-Stir-Fried-with-Thai-Basil.webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/Stir-Fried-Chicken-with-Cashew-Nuts.webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/Spicy-Green-Papaya-Salad.webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/Thai-Coconut-Curry-Noodle-Soup.webp",
  "https://images.asiahighlights.com/allpicture/2022/02/ca9d3c345fb14950adf2d939_cut_750x400_264.webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/Pad-See-Ew.webp",
];
