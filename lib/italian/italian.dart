import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/italian/arugulaPasta.dart';
import 'package:recipe_kitchen_app/italian/chickenParmesan.dart';
import 'package:recipe_kitchen_app/italian/gnocchi.dart';
import 'package:recipe_kitchen_app/italian/italianLasagna.dart';
import 'package:recipe_kitchen_app/italian/pastaLimone.dart';
import 'package:recipe_kitchen_app/italian/pescePazza.dart';
import 'package:recipe_kitchen_app/italian/spaghettiCarbonara.dart';
import 'package:recipe_kitchen_app/italian/zucchini.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ItalianPage extends StatefulWidget {
  @override
  _ItalianPageState createState() => _ItalianPageState();
}

class _ItalianPageState extends State<ItalianPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Italian Food Recipes'),
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
              if (nameRecipe[index] == "Pesce all Acqua Pazza") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PescePazza(),
                  ),
                );
              } else if (nameRecipe[index] == "Italian Lasagna") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => italianLasagna(),
                  ),
                );
              } else if (nameRecipe[index] == "Zucchini") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => zucchini(),
                  ),
                );
              } else if (nameRecipe[index] == "Spaghetti Carbonara") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => spaghettiCarbonara(),
                  ),
                );
              } else if (nameRecipe[index] == "Chicken Parmesan") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chickenParmesan(),
                  ),
                );
              } else if (nameRecipe[index] == "Gnocchi") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Gnocchi(),
                  ),
                );
              } else if (nameRecipe[index] == "Pasta al limone") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => pastaAlLimone(),
                  ),
                );
              } else if (nameRecipe[index] == "Arugula pasta") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => arugulaPasta(),
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
  "Pesce allc Acqua Pazza",
  "Italian Lasagna",
  "Zucchini",
  "Spaghetti Carbonara",
  "Chicken Parmesan",
  "Gnocchi",
  "Pasta al limone",
  "Arugula pasta",
];

final imageUrls = [
  "https://images.services.kitchenstories.io/0ghPYbJVw1PlaygCbsJe04laZ_s=/1200x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2227-photo-final-2.jpg",
  "https://images.services.kitchenstories.io/t7e5xomIgenNDldW197drQWdqKE=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R130-picture-title.jpg",
  "https://images.services.kitchenstories.io/ck0vQLp2v_c2v-ieA8kIB6l1dP8=/1200x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/1770-photo-final-01.jpg",
  "https://images.services.kitchenstories.io/AUufPbHfRHwRME57riBS1GvIJ1k=/1200x0/filters:quality(80)/images.kitchenstories.io/wagtailOriginalImages/R2568-photo-final-_0.jpg",
  "https://images.services.kitchenstories.io/wbqMl3q0AIdJFtw1L0cvixlQHnk=/1920x0/filters:quality(85)/images.kitchenstories.io/recipeImages/RP06_22_14_ChickenPiccata_TitlePicture.jpg",
  "https://images.services.kitchenstories.io/YFUdN6U2i3cJH-Cy79EkeF2IECk=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2768-PENNY-final-photo-1.jpg",
  "https://images.services.kitchenstories.io/Xg6gGwOy3RgrYhBACqeHaecT2is=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R2944-photo-final-1-4x3.jpg",
  "https://images.services.kitchenstories.io/CdbergMFA-k9Xf66nbiFXI0A2SM=/1920x0/filters:quality(85)/images.kitchenstories.io/wagtailOriginalImages/R1592-photo-final-01.jpg",
];
