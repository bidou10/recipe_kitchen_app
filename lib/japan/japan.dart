import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/japan/chickenKatsu.dart';
import 'package:recipe_kitchen_app/japan/chickenTarragon.dart';
import 'package:recipe_kitchen_app/japan/gyudon.dart';
import 'package:recipe_kitchen_app/japan/okonomiyaki.dart';
import 'package:recipe_kitchen_app/japan/sushi.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class JapanPage extends StatefulWidget {
  @override
  _JapanPageState createState() => _JapanPageState();
}

class _JapanPageState extends State<JapanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Japan Food Recipes'),
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
              if (nameRecipe[index] == "Gyudon") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Gyudon(),
                  ),
                );
              } else if (nameRecipe[index] == "Jopanese chicken tarragon") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chickenTarragon(),
                  ),
                );
              } else if (nameRecipe[index] == "Okonomiyaki") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Okonomiyaki()),
                );
              } else if (nameRecipe[index] == "Sushi") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sushi()),
                );
              } else if (nameRecipe[index] == "Chicken Katsu") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChickenKatsu()),
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
  "Gyudon",
  "Jopanese chicken tarragon",
  "Okonomiyaki",
  "Sushi",
  "Chicken Katsu",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/OkFI3vxpHl3PZdjFRI3AD4CCMzo=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/RP04_20_02_Gyudon_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/AswiwM4cqjDzRL4uyoaiK5sVr9M=/828x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2289-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/rZAhWUNC6QEwmwWyUozUzTZ7mYQ=/640x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R1996-photo-final-003-NEW.jpg",
  "https://images.services.kitchenstories.io/Eul0w3c0nGB80SJsgEs9yZ80aL8=/828x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2233-photo-final.jpg",
  "https://images.services.kitchenstories.io/K31wvDN6BwjDaI-NzQNlwfTiaeE=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/R1135-photo-final-4x3.jpg",
];
