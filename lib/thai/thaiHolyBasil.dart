import 'package:flutter/material.dart';

class ThaiHolyBasil extends StatelessWidget {
  const ThaiHolyBasil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thai Holy Basil'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/thai_Holy_Basil_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Thai holy basil and pork stir fry',
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
              'Ingredient List: \n\n[Step 1]1 shallot ,4 cloves garlic ,3 Thai chilis ,15 g holy basil ,1 tbsp light soy sauce ,1 tbsp fish sauce ,½ tbsp oyster sauce ,½ tbsp dark soy sauce ,1 tsp sugar ,\n\n [Step 2] :2 eggs ,oil (for frying) \n\n [Step 3] : jasmine rice (for serving) ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :cutting board, knife, food processor ,bowl (small) \n\n Step 2 : frying pan, spatula \n\n Step 3 : cooking spoon',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageHolyBasil.length,
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
                          fontWeight: FontWeight.w700),
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
    "assets": "assets/step/thai_Holy_Basil_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/thai_Holy_Basil_S1.jpeg",
    "info":
        "Roughly chop shallot, chili, and garlic then add to a food processor and pulse until finely chopped. Pluck the basil leaves. Mix light soy sauce, fish sauce, oyster sauce, dark soy sauce, and sugar together in a small bowl.",
  },
  {
    "assets": "assets/step/thai_Holy_Basil_S2.jpeg",
    "info":
        "In a frying pan, heat oil over medium-high heat. Crack in the eggs and fry until the edge is crispy and the whites are set. Remove and set aside.",
  },
  {
    "assets": "assets/step/thai_Holy_Basil_S3.jpeg",
    "info":
        "In the same pan, heat more oil over medium heat. Add the shallot-chili paste and fry for approx. 2–3 min., or until fragrant. Add minced pork, breaking it up with a spatula into small pieces as it browns. Fry for approx. 3 min., until well browned. Add the sauce mixture and stir to combine. Add basil and briefly stir-fry until the leaves are wilted. Remove from the pan and serve with cooked rice and a fried egg (one per serving).",
  },
];

final imageHolyBasil = [
  "assets/step/thai_Holy_M.jpeg",
  "assets/step/thai_Holy_S1.jpeg",
  "assets/step/thai_Holy_S2.jpeg",
  "assets/step/thai_Holy_S3.jpeg",
];
