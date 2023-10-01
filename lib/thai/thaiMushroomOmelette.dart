import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class ThaiMushroomOmelette extends StatelessWidget {
  const ThaiMushroomOmelette({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thai mushroom omelette'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/thai_mushroom_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Thai mushroom omelette',
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
              'Ingredient List: \n\n[Step 1],250 g mixed mushrooms ,4 scallions ,1 clove garlic ,1 Thai chili ,2 sprigs cilantro\n\n [Step 2] :1 tbsp tomato paste, vegetable oil ,salt \n\n [Step 3] :4 eggs ,2 tbsp fish sauce ,2 tsp black sesame seeds ,salt ,pepper ,vegetable oil \n\n [Step 4] : 2 tbsp oyster sauce (for serving) 2 tsp black sesame seeds,2 sprigs Thai basil',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :knife,cutting board \n\n Step 2 :frying pan,spatula  \n\n Step 3 :bowl,whisk,frying pan (large) \n\n Step 4 : Garnish with oyster sauce, scallion greens, Thai basil, remaining black sesame seeds and cilantro. Enjoy! ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageThaiMushroomOmelette.length,
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
    "assets": "assets/step/thai_mushroom_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/thai_mushroom_S1.jpeg",
    "info":
        "Roughly chop shallot, chili, and garlic then add to a food processor and pulse until finely chopped. Pluck the basil leaves. Mix light soy sauce, fish sauce, oyster sauce, dark soy sauce, and sugar together in a small bowl.",
  },
  {
    "assets": "assets/step/thai_mushroom_S2.jpeg",
    "info":
        "In a frying pan, heat oil over medium-high heat. Crack in the eggs and fry until the edge is crispy and the whites are set. Remove and set aside.",
  },
  {
    "assets": "assets/step/thai_mushroom_S3.jpeg",
    "info":
        "In the same pan, heat more oil over medium heat. Add the shallot-chili paste and fry for approx. 2–3 min., or until fragrant. Add minced pork, breaking it up with a spatula into small pieces as it browns. Fry for approx. 3 min., until well browned. Add the sauce mixture and stir to combine. Add basil and briefly stir-fry until the leaves are wilted. Remove from the pan and serve with cooked rice and a fried egg (one per serving).",
  },
  {
    "assets": "assets/step/thai_mushroom_S4.jpeg",
    "info":
        "In the same pan, heat more oil over medium heat. Add the shallot-chili paste and fry for approx. 2–3 min., or until fragrant. Add minced pork, breaking it up with a spatula into small pieces as it browns. Fry for approx. 3 min., until well browned. Add the sauce mixture and stir to combine. Add basil and briefly stir-fry until the leaves are wilted. Remove from the pan and serve with cooked rice and a fried egg (one per serving).",
  },
];

final imageThaiMushroomOmelette = [
  "assets/step/thai_mushroom_M.jpeg",
  "assets/step/thai_mushroom_S1.jpeg",
  "assets/step/thai_mushroom_S2.jpeg",
  "assets/step/thai_mushroom_S3.jpeg",
  "assets/step/thai_mushroom_S4.jpeg"
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
