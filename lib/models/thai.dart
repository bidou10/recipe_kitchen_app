import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';
import 'package:flutter_sticky_section_list/sticky_section_list.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ThaiPage extends StatefulWidget {
  @override
  _ThaiPageState createState() => _ThaiPageState();
}

class _ThaiPageState extends State<ThaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Thai Food Recipes'),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 9,
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage('${nameRecipe[index]}'),
                ),
              );
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
  "Pad thai crevette",
  "pad thai classic",
  "Red curry",
  "Minced prok",
  "Fried Chicken",
  "Green Papaya",
  "Curry noodle",
  "Cut",
  "Pad see"
];

final imageUrls = [
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/pad-thai.webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/pad-thai-2.webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/thai-red-curry(1).webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/Minced-Pork-Stir-Fried-with-Thai-Basil.webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/Stir-Fried-Chicken-with-Cashew-Nuts.webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/Spicy-Green-Papaya-Salad.webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/Thai-Coconut-Curry-Noodle-Soup.webp",
  "https://images.asiahighlights.com/allpicture/2022/02/ca9d3c345fb14950adf2d939_cut_750x400_264.webp",
  "https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/Pad-See-Ew.webp",
];




