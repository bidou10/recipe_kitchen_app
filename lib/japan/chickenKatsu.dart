import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class ChickenKatsu extends StatelessWidget {
  const ChickenKatsu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken Katsu'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/chickenKatsu_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chicken Katsu',
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
              'Ingredient List: \n\n[Step 1] :1 Chinese cabbage 1 shallot ½ clove garlic  \n\n [Step 2] :3 tbsp mirin ,2 tbsp soy sauce ,4 tbsp mayonnaise ,½ lemon (juice) ,1 tbsp sesame oil, sugar to taste, salt, oil for frying \n\n [Step 3] :2 chicken breasts, 3 eggs, 100 g flour, 200 g bread crumbs, salt, pepper \n\n [Step 4]:200 ml oil ,rice for serving ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :cutting board,knife \n\n Step 2 :frying pan,large bowl,small bowl \n\n Step 3 :3 large bowls \n\n Step 4 :frying pan ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageKatsu.length,
                (index) {
                  return InkWell(
                    onTap: () {
                      // Afficher l'image en plein écran avec l'app bar
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FullScreenPage(
                            imageAsset: product[index]['assets'] as String,
                            info: product[index]['info'] as String,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              product[index]['assets'] as String,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Step $index',
                                  style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 0.6,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  '${product[index]['info']}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    letterSpacing: 0.7,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
    "assets": "assets/step/chickenKatsu_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/chickenKatsu_S1.jpeg",
    "info":
        "Clean scallion, finely slice the white part into rings and julienne the green lengthwise. Peel and thinly slice ginger. Pluck tarragon leaves from the stems and reserve the stems for later. Finely chop tarragon leaves.",
  },
  {
    "assets": "assets/step/chickenKatsu_S2.jpeg",
    "info":
        "Season chicken with salt on both sides. Add oil to a cold frying pan, then add chicken immediately, placing the pieces skin-side down. Fry until skin is golden brown and crispy, approx. 12 min. Flip the chicken over and add the sliced scallions whites, tarragon stems, and ginger and fry until golden brown. Deglaze with dashi, soy sauce, and mirin and let simmer for approx. 5 min.",
  },
  {
    "assets": "assets/step/chickenKatsu_S3.jpeg",
    "info":
        "Remove chicken thighs and set aside. Remove tarragon stems and ginger and cook the sauce until reduced by half. Dissolve the starch in a little water, whisking it together with a fork. Add sesame oil, butter, three-fourth of tarragon leaves, starch water, and stir to combine.",
  },
  {
    "assets": "assets/step/chickenKatsu_S4.jpeg",
    "info":
        "Slice the chicken and serve over sushi rice. Drizzle the sauce and garnish with scallion greens and remaining tarragon. Enjoy!",
  },
];

final imageKatsu = [
  "assets/step/chickenKatsu_M.jpeg",
  "assets/step/chickenKatsu_S1.jpeg",
  "assets/step/chickenKatsu_S2.jpeg",
  "assets/step/chickenKatsu_S3.jpeg",
  "assets/step/chickenKatsu_S4.jpeg"
];

class FullScreenPage extends StatelessWidget {
  final String imageAsset;
  final String info;

  FullScreenPage({required this.imageAsset, required this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // App bar avec le bouton de retour
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Retour à l'écran précédent
            Navigator.of(context).pop();
          },
        ),
        title: Text('Full Screen Image'),
      ),
      body: FullScreenWidget(
        child: Image.asset(
          imageAsset,
          fit: BoxFit.cover,
        ),
        disposeLevel: DisposeLevel.High,
      ),
    );
  }
}
