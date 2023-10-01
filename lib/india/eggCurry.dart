import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class eggCurry extends StatelessWidget {
  const eggCurry({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Egg curry'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/eggCurry_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'egg curry',
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
              'Ingredient List: \n\n[Step 1] :½ green chili 5 g ginger 1 cloves garlic 1 onions 3 hard boiled eggs\n\n[Step 2] :1 tbsp vegetable oil ¼ tsp chili powder ⅛ tsp ground turmeric salt\n\n [Step 3] :½ tsp cumin seed ½ tsp ground coriander ½ tsp chili powder \n\n [Step 4] :200 g canned crushed tomatoes 100 ml water ½ tsp garam masala 1¾ sprigs cilantro basmati rice (cooked, for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife \n\n Step 2 :frying pan,spatula \n\n Step 3 :pot \n\n Step 4 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageEggCurry.length,
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
    "assets": "assets/step/eggCurry_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/eggCurry_S1.jpeg",
    "info":
        "Thinly slice green chili. Grate ginger and garlic. Finely chop onions. Remove the peel of boiled eggs.",
  },
  {
    "assets": "assets/step/eggCurry_S2.jpeg",
    "info":
        "In a frying pan, heat half of the vegetable oil or ghee over medium-high heat, then add eggs, fry until the eggs are light golden outside, for about 4–5 min., tossing in between for a few times. Add 1/3 of the chili powder and turmeric, season with salt. Toss to cover the eggs in spice.",
  },
  {
    "assets": "assets/step/eggCurry_S3.jpeg",
    "info":
        "In a pot, heat remaining oil over medium heat, then add cumin seeds, fry until they sizzle. Add the onion, fry for approx. 7 min. until the onions are soft and lightly browned. Then add green chili, grated ginger and garlic, fry until fragrant. Add ground coriander and chili powder, mix to combine",
  },
  {
    "assets": "assets/step/eggCurry_S4.jpeg",
    "info":
        "Deglaze with crushed tomatoes and water. Bring to a light simmer and cook over medium-low heat until it’s reduced, for approx. 12–15 min., add more water if the curry is too dry. Add garam masala and most of the eggs in the curry, making sure they’re covered, and cook for approx. 2–3 more min. When the curry is ready, halve 2 remaining eggs, put on top and garnish with coriander. Serve with cooked basmati rice",
  },
];

final imageEggCurry = [
  "assets/step/eggCurry_M.jpeg",
  "assets/step/eggCurry_S1.jpeg",
  "assets/step/eggCurry_S2.jpeg",
  "assets/step/eggCurry_S3.jpeg",
  "assets/step/eggCurry_S4.jpeg",
];
