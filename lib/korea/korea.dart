import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/korea/bibimbap.dart';
import 'package:recipe_kitchen_app/korea/kimbap.dart';
import 'package:recipe_kitchen_app/korea/kimchi.dart';
import 'package:recipe_kitchen_app/korea/ragu.dart';
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
              } else if (nameRecipe[index] == "Kimchi") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kimchi()),
                );
              } else if (nameRecipe[index] == "Kimchi") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kimchi()),
                );
              } else if (nameRecipe[index] == "Kimchi") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kimchi()),
                );
              } else if (nameRecipe[index] == "Kimchi") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kimchi()),
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
  "Kimchi",
  "Kimchi",
  "8",
  "9",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/n80NQB1czj4Cdp1LUnjq5k5AtbM=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/20_13_KoreanBibimbab_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/P2C2AuHdfRPFsI6S9G1mtJxMc90=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2455-final-photo-_2.jpg",
  "https://images.services.kitchenstories.io/a7Uh30NKeQ88tgigpwgNtjBRJYY=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2383-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/jJYvMxlfrqn-l3iiMwBHTBi13Zk=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2402-photo-final-3.jpg",
  "https://images.services.kitchenstories.io/8Cjk1BbdiAYe2XlWplomcJV1UTI=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/04_04_MiniQuicheLorraine_Final4x3.jpg",
  "https://images.services.kitchenstories.io/KA8UNtiftT9fbucrkduHjGQcnzU=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/04_22_PistazienMacarons_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/eGo1uxv0-C1NTLBI5LFdeoqS9B0=/1200x0/filters:quality(80)/images.kitchenstories.io/recipeImages/05_07_CrepesSuzette_titlePicture.jpg",
  "https://images.services.kitchenstories.io/0p5NLxB8SU--Nw26cyNk7D0UPag=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/RP02_21_05_quickChocolateCroissant_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/C8_S6f1oV0dWUe4kz2TUQK6HBAE=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/TarteTatin_final.jpg",
];
