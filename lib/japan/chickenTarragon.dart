import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class chickenTarragon extends StatelessWidget {
  const chickenTarragon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Japanese Chicken tarragon'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/thaiChickenPotato_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Japanese Chicken tarragon',
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
              'Ingredient List: \n\n[Step 1] :2 scallions 10 g ginger 25 g tarragon  \n\n [Step 2] :400 g chicken thighs (boneless) 250 ml dashi 3 tbsp soy sauce 3 tbsp mirin salt vegetable oil (for frying) \n\n [Step 3] :2 tbsp sesame oil 1 tbsp butter 1 tsp starch 1 tbsp water \n\n [Step 4]:none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 : knife,cutting board\n\n Step 2 :frying pan (large),tongs \n\n Step 3 :cooking spoon \n\n Step 4 :sushi rice (for serving) ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageJapaneseChickenTarragon.length,
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
                                SizedBox(
                                  height: 10,
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
    "assets": "assets/step/ChickenTarragon_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/ChickenTarragon_S1.jpeg",
    "info":
        "Clean scallion, finely slice the white part into rings and julienne the green lengthwise. Peel and thinly slice ginger. Pluck tarragon leaves from the stems and reserve the stems for later. Finely chop tarragon leaves.",
  },
  {
    "assets": "assets/step/ChickenTarragon_S2.jpeg",
    "info":
        "Season chicken with salt on both sides. Add oil to a cold frying pan, then add chicken immediately, placing the pieces skin-side down. Fry until skin is golden brown and crispy, approx. 12 min. Flip the chicken over and add the sliced scallions whites, tarragon stems, and ginger and fry until golden brown. Deglaze with dashi, soy sauce, and mirin and let simmer for approx. 5 min.",
  },
  {
    "assets": "assets/step/ChickenTarragon_S3.jpeg",
    "info":
        "Remove chicken thighs and set aside. Remove tarragon stems and ginger and cook the sauce until reduced by half. Dissolve the starch in a little water, whisking it together with a fork. Add sesame oil, butter, three-fourth of tarragon leaves, starch water, and stir to combine.",
  },
  {
    "assets": "assets/step/ChickenTarragon_S4.jpeg",
    "info":
        "Slice the chicken and serve over sushi rice. Drizzle the sauce and garnish with scallion greens and remaining tarragon. Enjoy!",
  },
];

final imageJapaneseChickenTarragon = [
  "assets/step/ChickenTarragon_M.jpeg",
  "assets/step/ChickenTarragon_S1.jpeg",
  "assets/step/ChickenTarragon_S2.jpeg",
  "assets/step/ChickenTarragon_S3.jpeg",
  "assets/step/ChickenTarragon_S4.jpeg"
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
