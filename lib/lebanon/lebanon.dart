import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/lebanon/halloumi.dart';
import 'package:recipe_kitchen_app/lebanon/manakish.dart';
import 'package:sticky_headers/sticky_headers.dart';

class LebanonPage extends StatefulWidget {
  @override
  _LebanonPageState createState() => _LebanonPageState();
}

class _LebanonPageState extends State<LebanonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Lebanon Food Recipes'),
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
              if (nameRecipe[index] == "Grilled halloumi") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => grilledHalloumi(),
                  ),
                );
              } else if (nameRecipe[index] == "Manakish") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => manakish(),
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
  "Grilled halloumi",
  "Manakish",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/4tY5B4R4OBkXU8TRfjwoWIh5Rtc=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/R1242-photo-final.jpg",
  "https://images.services.kitchenstories.io/j5Ge9LUrp44JX1h-b2LFpZ8f97k=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R1735-photo-final.jpg",
];
