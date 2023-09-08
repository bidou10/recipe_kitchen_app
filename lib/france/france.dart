import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/france/coqAuVin.dart';
import 'package:recipe_kitchen_app/france/crepe.dart';
import 'package:recipe_kitchen_app/france/croqueMonsieur.dart';
import 'package:recipe_kitchen_app/france/frenchTuna.dart';
import 'package:recipe_kitchen_app/france/macarons.dart';
import 'package:recipe_kitchen_app/france/miniQuiche.dart';
import 'package:recipe_kitchen_app/france/tartiflette.dart';
import 'package:sticky_headers/sticky_headers.dart';

class FrancePage extends StatefulWidget {
  @override
  _FrancePageState createState() => _FrancePageState();
}

class _FrancePageState extends State<FrancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('France Food Recipes'),
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
              if (nameRecipe[index] == "Tartiflette") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => tartiflette(),
                  ),
                );
              } else if (nameRecipe[index] == "French tuna sandwich") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => frenchTuna()),
                );
              } else if (nameRecipe[index] == "Coq Au vin") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => coqAuVin()),
                );
              } else if (nameRecipe[index] == "Croque Monsieur") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => croqueMonsieur()),
                );
              } else if (nameRecipe[index] == "Mini Quiche Lorraine") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => miniQuiche()),
                );
              } else if (nameRecipe[index] == "Macarons buttercream") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => macarons()),
                );
              } else if (nameRecipe[index] == "Crepe") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => crepe()),
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
  "Tartiflette",
  "French tuna sandwich",
  "Coq Au vin",
  "Croque Monsieur",
  "Mini Quiche Lorraine",
  "Macarons buttercream",
  "Crepe",
  "Mexican Pasta Salad",
  "Guacaomole Tuna Steak"
];

final imageUrls = [
  "https://images.services.kitchenstories.io/0_iSncC4LlYxL5uhz3cmziKln-0=/1920x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R1684-photo-final-02.jpg",
  "https://images.services.kitchenstories.io/O5lvzJDxDHDa6HkIUfKiCyTCEA8=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2403-photo-final-1.jpg",
  "https://images.services.kitchenstories.io/HEhVAPq7MXJc4VXnoRL86FHANes=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/01_01_KlassischesCoqAuVin_titlePicture.jpg",
  "https://images.services.kitchenstories.io/yHlZ8miHBfnNidx6-lCc5GenQWM=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/16_01_24_CroqueMonsier_Final.jpg",
  "https://images.services.kitchenstories.io/8Cjk1BbdiAYe2XlWplomcJV1UTI=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/04_04_MiniQuicheLorraine_Final4x3.jpg",
  "https://images.services.kitchenstories.io/KA8UNtiftT9fbucrkduHjGQcnzU=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/04_22_PistazienMacarons_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/eGo1uxv0-C1NTLBI5LFdeoqS9B0=/1200x0/filters:quality(80)/images.kitchenstories.io/recipeImages/05_07_CrepesSuzette_titlePicture.jpg",
  "https://images.services.kitchenstories.io/uttSPcDYSvSk3gDDEwTCZEyQ_QY=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailResizedImages/R2978-abtesting2.original.jpg",
  "https://images.services.kitchenstories.io/d3oQU0oWuHozTy1DDqdS8EzinWk=/1920x0/filters:quality(80)/images.kitchenstories.io/recipeImages/R771-photo-final-4x3.jpg",
];
