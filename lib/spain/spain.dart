import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/spain/basqueBurnt.dart';
import 'package:recipe_kitchen_app/spain/canarianPorkChops.dart';
import 'package:recipe_kitchen_app/spain/ceviche.dart';
import 'package:recipe_kitchen_app/spain/chorizoPotato.dart';
import 'package:recipe_kitchen_app/spain/gazpacho.dart';
import 'package:recipe_kitchen_app/spain/paella.dart';
import 'package:recipe_kitchen_app/spain/serrano.dart';
import 'package:recipe_kitchen_app/spain/spanishGarlicShrimp.dart';
import 'package:recipe_kitchen_app/spain/sweetCornGazpacho.dart';
import 'package:sticky_headers/sticky_headers.dart';

class SpainPage extends StatefulWidget {
  @override
  _spainPageState createState() => _spainPageState();
}

class _spainPageState extends State<SpainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Spanish Food Recipes'),
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
              if (nameRecipe[index] == "Paella") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => paella(),
                  ),
                );
              } else if (nameRecipe[index] == "Chorizo potato") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChorizoPotato(),
                  ),
                );
              } else if (nameRecipe[index] == "Gazpacho") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => gazpacho(),
                  ),
                );
              } else if (nameRecipe[index] == "Ceviche") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ceviche(),
                  ),
                );
              } else if (nameRecipe[index] == "Serrano") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Serrano(),
                  ),
                );
              } else if (nameRecipe[index] == "Sweet Corn Gazpacho") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => sweetCornGazpacho(),
                  ),
                );
              } else if (nameRecipe[index] == "Canarian Pork Chops") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CanarianPorkChops(),
                  ),
                );
              } else if (nameRecipe[index] == "Spanish Garlic Shrimp") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => spanishGarlicShrimp(),
                  ),
                );
              } else if (nameRecipe[index] == "Basque cheesecake") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => basqueBurnt(),
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
  "Paella",
  "Chorizo potato",
  "Gazpacho",
  "Ceviche",
  "Serrano",
  "Sweet Corn Gazpacho",
  "Canarian Pork Chops",
  "Spanish Garlic Shrimp",
  "Basque cheesecake",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/eVCKXHTMpdClQHGdd8mDk3debmU=/1080x0/filters:quality(80)/images.kitchenstories.io/recipeImages/RP02_18_06_valencianPaella_titlePicture.jpg",
  "https://images.services.kitchenstories.io/PPU9A06PL_ssttFgJFpHl2fxin0=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R3007-final-photo-1.jpg",
  "https://images.services.kitchenstories.io/WoTGG0YkGTGs84DhO7ybWayQKXw=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2406-final-photo-1.jpg",
  "https://images.services.kitchenstories.io/2k_M-z1kikmvouSzFyvcgcGJVTM=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/RP08_20_01_SummerCeviche_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/rOU6PDGQ_SU_ifG-f9LasTpUp94=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/10_10_StuffedSerranoWrappedChicken_titlePicture.jpg",
  "https://images.services.kitchenstories.io/29KE7YERjfgPh6M3K960KKFNFng=/1080x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R1655-photo-final-01.jpg",
  "https://images.services.kitchenstories.io/mATUJ6d_dcr0I8Ut68gMa0jKQqQ=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/R1195-photo-final.jpg",
  "https://images.services.kitchenstories.io/Gg2_Z-3now1dt5UgFv7S47gXGT4=/1200x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R1167-photo-final.jpg",
  "https://images.services.kitchenstories.io/Dsj-1sRlFyk1folbmhrAuwIDNqw=/1200x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R1965-photo-final-001.jpg",
];
