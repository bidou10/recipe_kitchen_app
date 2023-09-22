import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/vietnam/banhMiBeef.dart';
import 'package:recipe_kitchen_app/vietnam/banhMiChicken.dart';
import 'package:recipe_kitchen_app/vietnam/banhMiPork.dart';
import 'package:recipe_kitchen_app/vietnam/bokChoyMango.dart';
import 'package:recipe_kitchen_app/vietnam/bokChoyShrimp.dart';
import 'package:recipe_kitchen_app/vietnam/noodleSoup.dart';
import 'package:recipe_kitchen_app/vietnam/pho.dart';
import 'package:recipe_kitchen_app/vietnam/phoBeef.dart';
import 'package:recipe_kitchen_app/vietnam/summerRolls.dart';
import 'package:recipe_kitchen_app/vietnam/tofuTomato.dart';
import 'package:sticky_headers/sticky_headers.dart';

class VietnamPage extends StatefulWidget {
  @override
  _VietnamPageState createState() => _VietnamPageState();
}

class _VietnamPageState extends State<VietnamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Vietnam Food Recipes'),
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
              if (nameRecipe[index] == "Vietnamese Tofu Tomato") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TofuTomato(),
                  ),
                );
              } else if (nameRecipe[index] == "Banh Mi Beef") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BanhMiBeef(),
                  ),
                );
              } else if (nameRecipe[index] == "Noodle soup") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => noodleSoup(),
                  ),
                );
              } else if (nameRecipe[index] == "Banh Mi Pork") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => banhMiPork(),
                  ),
                );
              } else if (nameRecipe[index] == "Bok choy Mango") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => bokChoyMango(),
                  ),
                );
              } else if (nameRecipe[index] == "Banh Mi Grilled Chicken") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => banhMiChicken(),
                  ),
                );
              } else if (nameRecipe[index] == "Bok choy Shrimp") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => bokChoyShrimp(),
                  ),
                );
              } else if (nameRecipe[index] == "Vietnamese Noodle Soup") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => pho(),
                  ),
                );
              } else if (nameRecipe[index] == "Vietnamese Summer Rolls") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => summerRolls(),
                  ),
                );
              } else if (nameRecipe[index] == "Vietnamese Beef Noodle Soup") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => phoBeef(),
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
  "Vietnamese Tofu Tomato",
  "Banh Mi Beef",
  "Noodle soup",
  "Banh Mi Pork",
  "Bok choy Mango",
  "Banh Mi Grilled Chicken",
  "Bok choy Shrimp",
  "Vietnamese Noodle Soup",
  "Vietnamese Summer Rolls",
  "Vietnamese Beef Noodle Soup",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/i_sHP_4kU9Z0dRfr93wXB_B5vSw=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/vietnamesischer-tomaten-tofu-6-960x6402x.jpg",
  "https://images.services.kitchenstories.io/JmvqhBhaM4yvaxSR_xUUSRaNAxc=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/RP06_24_07_Banh-Mi-Sandwich_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/6RSis_77H9kHhktAqdcwV1P56ak=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R1034-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/iFUBMn4t2lT5AA-1Hz1A0skPnD0=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R1373-photo-final.jpg",
  "https://images.services.kitchenstories.io/m3JdehKXOPnORxh0eXGbB2AIxzA=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R1631-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/LJump5KBcwmTSsZb13btvG99ang=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2102-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/eOyyJJYR55X0n48L-caXLi1jgfQ=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/R773-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/Rp0Qs2X2VPZ1rI8uhNPajr8d04E=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/37_05_VietnamesePho_Final.jpg",
  "https://images.services.kitchenstories.io/aDIxSmSqevCDArcTAY_Ks7_YxeM=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/RP07_20_12_VietnameseSummerRolls_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/VFnPFSj2FlOjZzeuCR3MioncyvM=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R1343-photo-final-1.jpg"
];
