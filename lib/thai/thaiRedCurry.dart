import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/thai/thaiClassic.dart';
import 'package:recipe_kitchen_app/thai/thaiRedCurry.dart';
import 'package:recipe_kitchen_app/thai/thaiShrimp.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ThaiRedCurry extends StatelessWidget {
  const ThaiRedCurry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Red Curry'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/thai_stir_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Thai Stir fried noodles',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Ingredient List: \n\n[Step 1] :  ,\n\n [Step 2] : \n\n [Step 3] :  ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 : pot ,colander ,cutting board ,knife ,bowl \n\n Step 2 : wok ,spatula.',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageThaiClassic.length,
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
                      style: TextStyle(fontSize: 20, letterSpacing: 0.6),
                    ),
                    subtitle: Text(
                      '${product[index]['info']},',
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.7,
                          fontWeight: FontWeight.w600),
                    ),
                    // trailing: SizedBox(
                    //   height: 110,
                    //   width: 110,
                    //   child: Image.asset(
                    //     imageThaiClassic[index],
                    //     fit: BoxFit.cover,
                    //   ),
                    // ), je garde le code au cas ou , j'ai envie de mettre les images sur la droite plutot que la gauche
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
    "assets": "assets/step/thai_stir_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/thai_stir_S1.jpeg",
    "info": "Step 1",
  },
  {
    "assets": "assets/step/thai_stir_S2.jpeg",
    "info": "Step 2",
  },
  {
    "assets": "assets/step/thai_stir_S3.jpeg",
    "info": "Step 3",
  },
];

final imageThaiStir = [
  "assets/step/thai_stir_M.jpeg",
  "assets/step/thai_stir_S1.jpeg",
  "assets/step/thai_stir_S2.jpeg",
  "assets/step/thai_stir_S3.jpeg",
];
