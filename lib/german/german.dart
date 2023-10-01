import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/german/Bauernfr%C3%BChst%C3%BCck.dart';
import 'package:recipe_kitchen_app/german/Br%C3%B6tchenkranz.dart';
import 'package:recipe_kitchen_app/german/Gr%C3%BCnkohl.dart';
import 'package:recipe_kitchen_app/german/K%C3%B6nigsbergerKlopse.dart';
import 'package:recipe_kitchen_app/german/Kartoffelsuppe.dart';
import 'package:recipe_kitchen_app/german/Rotkohl.dart';
import 'package:recipe_kitchen_app/german/handbrot.dart';
import 'package:recipe_kitchen_app/german/kohlsuppe.dart';
import 'package:recipe_kitchen_app/german/sauerkraut.dart';
import 'package:recipe_kitchen_app/german/schnitzel.dart';
import 'package:recipe_kitchen_app/german/zwiebelrostbraten.dart';
import 'package:sticky_headers/sticky_headers.dart';

class GermanPage extends StatefulWidget {
  @override
  _GermanPageState createState() => _GermanPageState();
}

class _GermanPageState extends State<GermanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('German Food Recipes'),
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
              if (nameRecipe[index] == "Handbrot") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => handbrot(),
                  ),
                );
              } else if (nameRecipe[index] == "Zwiebelrostbraten") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Zwiebelrostbraten(),
                  ),
                );
              } else if (nameRecipe[index] == "Kohlsuppe") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => kohlsuppe(),
                  ),
                );
              } else if (nameRecipe[index] == "Brötchenkranz") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => brotchenkranz(),
                  ),
                );
              } else if (nameRecipe[index] == "Grünkohl") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => grunkohl(),
                  ),
                );
              } else if (nameRecipe[index] == "Königsberger Klopse") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KonigsbergerKlopse(),
                  ),
                );
              } else if (nameRecipe[index] == "Bauernfrühstück") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => bauernfruhstuck(),
                  ),
                );
              } else if (nameRecipe[index] == "Rotkohl") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Rotkohl(),
                  ),
                );
              } else if (nameRecipe[index] == "Schnitzel") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => schnitzel(),
                  ),
                );
              } else if (nameRecipe[index] == "Kartoffelsuppe") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Kartoffelsuppe(),
                  ),
                );
              } else if (nameRecipe[index] == "Sauerkraut") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => sauerkraut(),
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
  "Handbrot",
  "Zwiebelrostbraten",
  "Kohlsuppe",
  "Brötchenkranz",
  "Grünkohl",
  "Königsberger Klopse",
  "Bauernfrühstück",
  "Rotkohl",
  "Schnitzel",
  "Kartoffelsuppe",
  "Sauerkraut",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/PDnasZcQ92zHuO9VwR7lwqLznXk=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2756-photo-final-2.jpg",
  "https://images.services.kitchenstories.io/H0qMzBJ3g6CoassBPG4vlMkMA8o=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R1672-photo-final-B-01.jpg",
  "https://images.services.kitchenstories.io/6DrI7IpCENSPRdpCYJ2noAcrXLc=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2452-photo-title-1.jpg",
  "https://images.services.kitchenstories.io/gS8V7aQB6gq767-ssLYf5qkaUvw=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R1887-photo-final-02.jpg",
  "https://images.services.kitchenstories.io/GZjSmEOBdoWlmoOwFyyLG8_N15o=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2516-final-photo.jpg",
  "https://images.services.kitchenstories.io/mWgFWsX6HnJnRgjLeZ30rJ52Kuk=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2567-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/z7U0_DVBGsnAGSgLfLqA30iCUZ8=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2955-final-photo.jpg",
  "https://images.services.kitchenstories.io/c-8QoHZeL3RrQUhHUl85FzScXIw=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2501-final-photo-_0.jpg",
  "https://images.services.kitchenstories.io/i9lOS1gVEF_-tO1HRaARm3jNfuo=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/RP09_20_07_ClassicSchnitzel_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/kWSeNthM1FeGryGSgRmkatBC690=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R1787-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/VtjluVxKrSY1Ta6XLidJm_73130=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/33_02_GermanPorkRoastWithSauerkraut_TitlePicture.jpg",
];
