import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:full_screen_image/full_screen_image.dart';
>>>>>>> V1Final
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
<<<<<<< HEAD
        title: Text('Red Curry'),
=======
        title: Text('Thai Red Curry'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/red_curry_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Thai red curry with turkey',
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
              'Ingredient List: \n\n[Step 1] : 200 g turkey breasts ,½ bell pepper ,½ carrot ,1 shallots ,1 cloves garlic ,1 tsp ginger ,½ stalk lemongrass ,\n\n [Step 2] :½ tbsp Thai red curry paste, coconut oil (for frying) \n\n [Step 3] : ½ tbsp soy sauce 150 ml, coconut milk ,7½ g cilantro, 50 ml vegetable broth, 50 g spinach ,salt, sugar, jasmine rice (for serving) ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :knife, cutting board \n\n Step 2 : frying pan (deep)spatula \n\n Step 3 : none',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageRedCurry.length,
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
    "assets": "assets/step/red_curry_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/red_curry_S1.jpeg",
    "info":
        "Cut turkey breast into approx. 2 cm/ 0.8 in. wide strips. Remove the core and slice the bell pepper into strips. Slice carrot diagonally. Halve shallots and slice into fine rings. Peel and finely mince garlic and ginger. Smash lemongrass with the back of a knife and chop finely.",
  },
  {
    "assets": "assets/step/red_curry_S2.jpeg",
    "info":
        "In a deep frying pan or a wok, heat some coconut oil over medium heat. Once it’s melted, add shallots, ginger and garlic. Fry for approx. 2–3 min., until the shallots have softened and turned translucent. Add Thai curry paste and lemongrass and fry for approx. 1 min. until fragrant. Then add the turkey pieces and fry for approx. 3–5 min. while stirring. Add vegetables and let cook for approx. 2 min.",
  },
  {
    "assets": "assets/step/red_curry_S3.jpeg",
    "info":
        "Deglaze with coconut milk, then season with soy sauce. Let simmer for approx. 15–20 min. or until the turkey is cooked through. Meanwhile, roughly chop most of the cilantro and set some aside for garnishing. If the curry is too creamy, add a little bit of broth one splash at a time until the desired consistency is reached. Then add spinach and cook briefly until the leaves wilt. Stir in the cilantro and season the curry with salt and sugar to taste. Serve with cooked jasmine rice and garnish with remaining cilantro.",
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
>>>>>>> V1Final
      ),
    );
  }
}
