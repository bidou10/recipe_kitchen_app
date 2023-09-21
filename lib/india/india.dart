import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/india/alooSabzi.dart';
import 'package:recipe_kitchen_app/india/bombayPatatoes.dart';
import 'package:recipe_kitchen_app/india/chickenBiryani.dart';
import 'package:recipe_kitchen_app/india/chickenPilaf.dart';
import 'package:recipe_kitchen_app/india/chickenTikka.dart';
import 'package:recipe_kitchen_app/india/dalSoup.dart';
import 'package:recipe_kitchen_app/india/eggCurry.dart';
import 'package:recipe_kitchen_app/india/halloumi.dart';
import 'package:recipe_kitchen_app/india/spicyChickenTomato.dart';
import 'package:sticky_headers/sticky_headers.dart';

class IndiaPage extends StatefulWidget {
  @override
  _IndiaPageState createState() => _IndiaPageState();
}

class _IndiaPageState extends State<IndiaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('India Food Recipes'),
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
              if (nameRecipe[index] == "Chicken Biryani") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chickenBiryani(),
                  ),
                );
              } else if (nameRecipe[index] == "Egg Curry") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => eggCurry(),
                  ),
                );
              } else if (nameRecipe[index] == "Chicken tikka masala") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chickenTikka(),
                  ),
                );
              } else if (nameRecipe[index] == "Bombay patatoes") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BombayPatatoes(),
                  ),
                );
              } else if (nameRecipe[index] == "Aloo Sabzi") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => alooSabzi(),
                  ),
                );
              } else if (nameRecipe[index] == "Chicken Pilaf") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chickenPilaf(),
                  ),
                );
              } else if (nameRecipe[index] == "Spicy Chicken tomato") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => spicyChickenTomato(),
                  ),
                );
              } else if (nameRecipe[index] == "Halloumi Curry") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => halloumi(),
                  ),
                );
              } else if (nameRecipe[index] == "Dal soup") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => dalSoup(),
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
  "Chicken Biryani",
  "Egg Curry",
  "Chicken tikka masala",
  "Bombay patatoes",
  "Aloo Sabzi",
  "Chicken Pilaf",
  "Spicy Chicken tomato",
  "Halloumi Curry",
  "Dal soup",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/YVIlql4cLAqTF3XTVizFZqZGFJk=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R1669-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/a5pwa-tIMa9uSt7PP-sbkDrL3ts=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2899-photo-final-3x4.jpg",
  "https://images.services.kitchenstories.io/ixEH2Kp89NcwYxEmzb9MXpw8BAk=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/RP16_01_103_Final_1x1.jpg",
  "https://images.services.kitchenstories.io/GWUG7oKMbgGPXCkgGmQbRrwtVw4=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2443-final-photo-_0.jpg",
  "https://images.services.kitchenstories.io/EikZY3sMNHoQySuXsNYvcAUtd40=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2703-photo-final-1-4x3-72dpi_1.jpg",
  "https://images.services.kitchenstories.io/1nCyqtHVSyCnGvudqLbtNk_gmaw=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/20_16_ChickenPilaf_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/F9h6uoHOavrDrCyNPoYTVcRwI54=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2977-photo-final-1-4x3.jpg",
  "https://images.services.kitchenstories.io/pOTl7cQt1pFiqKOSf8Yy46fTDQA=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2675-final-photo-_2.jpg",
  "https://images.services.kitchenstories.io/9bw4Myp9OKnMjVVoLF2SgCMikSk=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/20_15_DalSoup_TitlePicture.jpg",
];
