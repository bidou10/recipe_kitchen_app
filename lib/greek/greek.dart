import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/greek/greekHoneydew.dart';
import 'package:recipe_kitchen_app/greek/greekSalad.dart';
import 'package:recipe_kitchen_app/greek/greekTomatoOrzo.dart';
import 'package:recipe_kitchen_app/greek/kofta.dart';
import 'package:recipe_kitchen_app/greek/moussaka.dart';
import 'package:recipe_kitchen_app/greek/spanakopita.dart';
import 'package:recipe_kitchen_app/greek/tzatziki.dart';
import 'package:sticky_headers/sticky_headers.dart';

class GreekPage extends StatefulWidget {
  @override
  _GreekPageState createState() => _GreekPageState();
}

class _GreekPageState extends State<GreekPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Greek Food Recipes'),
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
              if (nameRecipe[index] == "Greek Salad") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => greekSalad(),
                  ),
                );
              } else if (nameRecipe[index] == "Kofta") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => beefKofta(),
                  ),
                );
              } else if (nameRecipe[index] == "Greek Tomato Orzo") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => greekTomatoOrzo(),
                  ),
                );
              } else if (nameRecipe[index] == "Greek Honeydew") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => greekHoneydew(),
                  ),
                );
              } else if (nameRecipe[index] == "Spanakopita") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => spanakopitaGreek(),
                  ),
                );
              } else if (nameRecipe[index] == "Moussaka") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => moussakaGreek(),
                  ),
                );
              } else if (nameRecipe[index] == "Tzatziki") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tzatziki(),
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
  "Greek Salad",
  "Kofta",
  "Greek Tomato Orzo",
  "Greek Honeydew",
  "Spanakopita",
  "Moussaka",
  "Tzatziki",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/9qQKvL8JYN2E5wnSpHEPu3ZfY8o=/1200x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2954-step-3a.jpg",
  "https://images.services.kitchenstories.io/QeHfQ13IhJNBGjU5r5u-l07FTt8=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2962-final-photos-3.jpg",
  "https://images.services.kitchenstories.io/h89cvTjX9yFU4TggfO6IH-IFgiA=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2552-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/-PMako-SVYrhg-FYTDmZwEZwfgw=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R1779-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/i0EfXk5OynYdUm-_uTFXw2Vo8qo=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R1299-photo-final.jpg",
  "https://images.services.kitchenstories.io/hJNkXGAjCPq4WQPNMn7Rk_EqGY0=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/RP01_18_05_moussaka_titlePicture.jpg",
  "https://images.services.kitchenstories.io/6bzNOfjaBtyB9OCVkUvPMOGO4Js=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/16_10_GyrosAndZaziki_Final.jpg",
];
