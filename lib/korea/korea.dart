import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/korea/BulgogiBeef.dart';
import 'package:recipe_kitchen_app/korea/Jumeokbap.dart';
import 'package:recipe_kitchen_app/korea/bibimbap.dart';
import 'package:recipe_kitchen_app/korea/kimbap.dart';
import 'package:recipe_kitchen_app/korea/kimchi.dart';
import 'package:recipe_kitchen_app/korea/koreaBBQ.dart';
import 'package:recipe_kitchen_app/korea/ragu.dart';
import 'package:recipe_kitchen_app/korea/shortRibs.dart';
import 'package:sticky_headers/sticky_headers.dart';

class KoreaPage extends StatefulWidget {
  @override
  _koreaPageState createState() => _koreaPageState();
}

class _koreaPageState extends State<KoreaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Korean Food Recipes'),
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
              if (nameRecipe[index] == "Bibimbap") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => bibimbap(),
                  ),
                );
              } else if (nameRecipe[index] == "Kimchi") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kimchi()),
                );
              } else if (nameRecipe[index] == "Kimbap") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kimbap()),
                );
              } else if (nameRecipe[index] == "Jaengban guksu") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kimchi()),
                );
              } else if (nameRecipe[index] == "Ragu mushroom") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => raguMushroom()),
                );
              } else if (nameRecipe[index] == "Korean BBQ") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => koreanBBQ()),
                );
              } else if (nameRecipe[index] == "Short ribs") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => shortRibs()),
                );
              } else if (nameRecipe[index] == "Jumeokbap") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => jumeokbap()),
                );
              } else if (nameRecipe[index] == "Bulgogi beef") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bulgogiBeef()),
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
  "Bibimbap",
  "Kimchi",
  "Kimbap",
  "Jaengban guksu",
  "Ragu mushroom",
  "Korean BBQ",
  "Short ribs",
  "Jumeokbap",
  "Bulgogi beef",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/n80NQB1czj4Cdp1LUnjq5k5AtbM=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/20_13_KoreanBibimbab_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/P2C2AuHdfRPFsI6S9G1mtJxMc90=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2455-final-photo-_2.jpg",
  "https://images.services.kitchenstories.io/a7Uh30NKeQ88tgigpwgNtjBRJYY=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2383-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/jJYvMxlfrqn-l3iiMwBHTBi13Zk=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2402-photo-final-3.jpg",
  "https://images.services.kitchenstories.io/BCBgWRZtl3D_zIthLAIpjX_-0CE=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2134-photo-final-002.jpg",
  "https://images.services.kitchenstories.io/JaiDypOtQJ1_uYPEN570pY4tBBQ=/1200x0/filters:quality(80)/images.kitchenstories.io/recipeStepImages/01_07_KoreanischesBarbecueMitSamJangDip_step08.jpg",
  "https://images.services.kitchenstories.io/wnqvh8O6ddIAzaS_JjYj1DKLg-g=/1200x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R1137-photo-final-4x3.jpg",
  "https://images.services.kitchenstories.io/ON_zw9bBsoZZiOFohnJn5vs2BpY=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2920-final-photo-293.jpg",
  "https://images.services.kitchenstories.io/FVk3lhT1S_pcLn-4ZuknfQu5ZmM=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/R667-photo-final-4x3.jpg",
];
