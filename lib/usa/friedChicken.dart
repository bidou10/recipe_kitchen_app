import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class friedChicken extends StatelessWidget {
  const friedChicken({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fried Chicken'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/FriedChicken_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Fried Chicken',
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
              'Ingredient List: \n\n[Step 1] :⅔ tbsp garlic powder ⅔ tbsp onion powder ⅔ tbsp salt ⅓ tbsp pepper ⅔ tbsp paprika\n\n[Step 2] :2⅔ chicken legs\n\n [Step 3] :1⅓ eggs 20 ml water ⅔ tbsp Tabasco 66⅔ g flour ⅓ tbsp baking powder salt \n\n [Step 4] :none \n\n [Step 5] :vegetable oil for deep frying',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:oven,small bowl \n\n Step 2 :cutting board, knife \n\n Step 3 :2 large bowls,whisk \n\n Step 4 :tongs \n\n Step 5 :frying pan, baking sheet, parchment paper \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageFriedChicken.length,
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
                                    fontWeight: FontWeight.w900,
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

const product = [
  {
    "assets": "assets/step/FriedChicken_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/FriedChicken_S1.jpeg",
    "info":
        "Preheat oven to 200°C/400°F. In a small bowl, mix together garlic powder, onion powder, salt, pepper, and paprika.",
  },
  {
    "assets": "assets/step/FriedChicken_S2.jpeg",
    "info":
        "Carefully cut chicken legs in half at the joint. Rub them generously with spice rub, setting any excess spice rub aside.",
  },
  {
    "assets": "assets/step/FriedChicken_S3.jpeg",
    "info":
        "In a large bowl, whisk together egg, water, and Tabasco. In a separate large bowl, whisk together flour, baking powder, a pinch of salt, and the excess spice rub.",
  },
  {
    "assets": "assets/step/FriedChicken_S4.jpeg",
    "info":
        "Dip chicken pieces in the egg mixture until well coated on all sides. Lightly shake to remove excess liquid. Then dredge chicken in flour mixture until a thick and even crust is formed. Repeat these steps for a thicker crust if desired.",
  },
  {
    "assets": "assets/step/FriedChicken_S5.jpeg",
    "info":
        "Preheat frying oil over medium-high heat in a large, deep frying pan. The right temperature is reached when small bubbles form when a wooden spoon is held into the oil. Fry chicken pieces in batches until brown and crispy for approx. 3 - 5 min. Transfer to a lined baking sheet and bake in a preheated oven at 200°C/400°F for approx. 10 - 15 min. Remove from oven and enjoy with lemon wedges and dipping sauces of your choice!",
  },
];

final imageFriedChicken = [
  "assets/step/FriedChicken_M.jpeg",
  "assets/step/FriedChicken_S1.jpeg",
  "assets/step/FriedChicken_S2.jpeg",
  "assets/step/FriedChicken_S3.jpeg",
  "assets/step/FriedChicken_S4.jpeg",
  "assets/step/FriedChicken_S5.jpeg",
];
