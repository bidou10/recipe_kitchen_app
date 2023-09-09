import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/thai/thaiClassic.dart';
import 'package:recipe_kitchen_app/thai/thaiRedCurry.dart';
import 'package:recipe_kitchen_app/thai/thaiShrimp.dart';
import 'package:sticky_headers/sticky_headers.dart';

class Gyudon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gyudon'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/Gyudon_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Gyudon',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Recipe for two persons',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Ingredient List: \n\n[Step 1] :200 g basmati rice 400 ml water salt  ,\n\n [Step 2] :300 g beef 2 red onions 3 green onions\n\n [Step 3] :3 tbsp soy sauce 3 tbsp mirin 2 tbsp oyster sauce 3 tbsp sake 3 tbsp sugar \n\n, [Step 4] :none \n\n,[Step 5] : none  \n\n,[Step 6] :none \n\n ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :small saucepan \n\n Step 2 :cutting board,knife\n\n, Step 3 :large saucepan,cooking spoon\n\n, Step 4 : none\n\n,Step 5 : aluminium foil \n\n Step 6: none ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageGyudon.length,
                (index) {
                  return ListTile(
                    leading: SizedBox(
                      height: 70,
                      width: 110, // Ajustez la largeur ici
                      child: Image.asset(
                        product[index]['assets'] as String,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      'Step $index',
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      '${product[index]['info']},',
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.w600),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const product = [
  {
    "assets": "assets/step/Gyudon_M.jpeg",
    "info": "Final photo, Enjoy your meal",
  },
  {
    "assets": "assets/step/Gyudon_S1.jpeg",
    "info":
        "Add rice, water and a pinch of salt to a saucepan. Bring to a simmer, reduce heat and allow to cook for approx. 10 – 15 min. until done. If necessary, drain excess water.",
  },
  {
    "assets": "assets/step/Gyudon_S2.jpeg",
    "info":
        "Meanwhile, cut beef into thin strips. Cut red onion and green onion into thin slices.",
  },
  {
    "assets": "assets/step/Gyudon_S3.jpeg",
    "info":
        "Add red onion, soy sauce, mirin, oyster sauce, sake, and sugar to a saucepan. Bring to a simmer over medium-high heat and continue to cook for approx. 2 – 3 min.",
  },
  {
    "assets": "assets/step/Gyudon_S4.jpeg",
    "info": "Then, add beef strips to saucepan and stir to cover with sauce.",
  },
  {
    "assets": "assets/step/Gyudon_S5.jpeg",
    "info":
        "Turn off heat, cover with aluminum foil, and allow to stew until meat is tender, approx. 3 – 4 min.",
  },
  {
    "assets": "assets/step/Gyudon_S6.jpeg",
    "info":
        "Remove aluminum foil and garnish with green onions. Serve over rice.",
  },
];

final imageGyudon = [
  "assets/step/Gyudon_M.jpeg",
  "assets/step/Gyudon_S1.jpeg",
  "assets/step/Gyudon_S2.jpeg",
  "assets/step/Gyudon_S3.jpeg",
  "assets/step/Gyudon_S4.jpeg",
  "assets/step/Gyudon_S5.jpeg",
  "assets/step/Gyudon_S6.jpeg",
];
