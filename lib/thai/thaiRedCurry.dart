import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:recipe_kitchen_app/thai/thaiClassic.dart';
import 'package:recipe_kitchen_app/thai/thaiRedCurry.dart';
import 'package:recipe_kitchen_app/thai/thaiShrimp.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ThaiRedCurry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thai Red curry'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/RedCurry_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Thai Red Curry',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'authentic traditional pad thai of thailand.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
              'Recipe for two persons',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Ingredient List: \n\n[Step 1] : 1 clove garlic 100 g snow peas 100 g green beans 1 red bell pepper 1 carrot 2 scallions 1 stalk lemongrass 300 g chicken breasts,\n\n [Step 2] : 4 tbsp sesame oil 1 tbsp red curry paste\n\n [Step 3] :  300 ml coconut milk 100 ml chicken stock 2 tbsp soy sauce 1 tbsp fish sauce 30 g cashews 7 g Thai basil jasmine rice (cooked, for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 : cutting board ,knife ,peeler \n\n Step 2 : wok ,spatula.\n\n Step 3: none',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageThaiRedCurry.length,
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

final imageThaiRedCurry = [
  "assets/step/RedCurry_M.jpeg",
  "assets/step/RedCurry_S1.jpeg",
  "assets/step/RedCurry_S2.jpeg",
  "assets/step/RedCurry_S3.jpeg",
];

const product = [
  {
    "assets": "assets/step/RedCurry_M.jpeg",
    "info": "Final photo , Enjoy your meal",
  },
  {
    "assets": "assets/step/RedCurry_S1.jpeg",
    "info":
        "Finely mince garlic. Trim ends of snow peas and green beans. Trim ends of bell pepper and remove seeds. Peel carrots. Slice snow peas, green beans, bell pepper, carrots, and scallions into thin matchsticks. Bruise lemongrass with the back of the knife to help release flavor. Slice chicken into strips.",
  },
  {
    "assets": "assets/step/RedCurry_S2.jpeg",
    "info":
        "Heat half of the sesame oil in a wok set over medium-high heat and briefly sear chicken, approx. 3 min. Remove and set aside. Add remaining sesame oil to the wok, then add the curry paste, whole lemongrass stalk, and garlic and fry for approx. 3 min until fragrant.",
  },
  {
    "assets": "assets/step/RedCurry_S3.jpeg",
    "info":
        "Add coconut milk and chicken stock, followed by the vegetables. Bring to a boil, add soy sauce and fish sauce, reduce heat to low, and let simmer for 5 min. Add chicken and let cook for another 5 min. Serve with rice and garnish with cashew nuts and Thai basil. Enjoy!"
  },
];

final imageRedCurry = [
  "assets/step/red_curry_M.jpeg",
  "assets/step/red_curry_S1.jpeg",
  "assets/step/red_curry_S2.jpeg",
  "assets/step/red_curry_S3.jpeg",
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
