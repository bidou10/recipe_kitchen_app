import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/morocco/chermoula.dart';
import 'package:recipe_kitchen_app/morocco/moroccanChickpea.dart';
import 'package:sticky_headers/sticky_headers.dart';

class MoroccoPage extends StatefulWidget {
  @override
  _MoroccoPageState createState() => _MoroccoPageState();
}

class _MoroccoPageState extends State<MoroccoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Morocco Food Recipes'),
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
              if (nameRecipe[index] == "Morocco Chickpea") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MoroccoChickpea(),
                  ),
                );
              } else if (nameRecipe[index] == "Chermoula") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chermoula(),
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
  "Morocco Chickpea",
  "Chermoula",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/0ghPYbJVw1PlaygCbsJe04laZ_s=/1200x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2227-photo-final-2.jpg",
  "https://images.services.kitchenstories.io/t7e5xomIgenNDldW197drQWdqKE=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R130-picture-title.jpg",
];
