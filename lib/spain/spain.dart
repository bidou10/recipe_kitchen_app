import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/spain/chorizoPotato.dart';
import 'package:recipe_kitchen_app/spain/paella.dart';
import 'package:recipe_kitchen_app/spain/test2.dart';
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
              } else if (nameRecipe[index] == "chorizo test") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChorizoPota(),
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
  "chorizo test",
  "Jaengban guksu",
  "Ragu mushroom",
  "Korean BBQ",
  "Short ribs",
  "Jumeokbap",
  "Bulgogi beef",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/eVCKXHTMpdClQHGdd8mDk3debmU=/1080x0/filters:quality(80)/images.kitchenstories.io/recipeImages/RP02_18_06_valencianPaella_titlePicture.jpg",
  "https://images.services.kitchenstories.io/PPU9A06PL_ssttFgJFpHl2fxin0=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R3007-final-photo-1.jpg",
  "https://images.services.kitchenstories.io/a7Uh30NKeQ88tgigpwgNtjBRJYY=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2383-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/jJYvMxlfrqn-l3iiMwBHTBi13Zk=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2402-photo-final-3.jpg",
  "https://images.services.kitchenstories.io/BCBgWRZtl3D_zIthLAIpjX_-0CE=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2134-photo-final-002.jpg",
  "https://images.services.kitchenstories.io/JaiDypOtQJ1_uYPEN570pY4tBBQ=/1200x0/filters:quality(80)/images.kitchenstories.io/recipeStepImages/01_07_KoreanischesBarbecueMitSamJangDip_step08.jpg",
  "https://images.services.kitchenstories.io/wnqvh8O6ddIAzaS_JjYj1DKLg-g=/1200x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R1137-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/ON_zw9bBsoZZiOFohnJn5vs2BpY=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2920-final-photo-293.jpg",
  "https://images.services.kitchenstories.io/FVk3lhT1S_pcLn-4ZuknfQu5ZmM=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/R667-photo-final-4x3.jpg",
];
