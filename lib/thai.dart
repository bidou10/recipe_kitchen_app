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

final description = ["", "", "", "", "", "", "", "", ""];

final ingredients = ["", "", "", "", "", "", "", "", ""];
// je dois creer ue class avec une description de l'element

class DetailPage extends StatelessWidget {
  final String sectionName;

  DetailPage(this.sectionName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sectionName),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/pad-thai.webp',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Pad thai',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'plat thai mélange poivre sel, envoutant ',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text('${nameRecipe[index]}'),
                  subtitle: Text('description element'),
                  trailing: Image.network(
                    '${imageUrls[index]}',
                    height: 80,
                    width: 100,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

// class ImageDetailPage extends StatelessWidget {
//   final String imageUrl;

//   ImageDetailPage(this.imageUrl);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Detail Page'),
//       ),
//       body: Center(
//         child: Image.network(imageUrl),
//       ),
//     );
//   }
// }
