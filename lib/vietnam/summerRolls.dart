import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class summerRolls extends StatelessWidget {
  const summerRolls({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summer Rolls'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/summerRolls_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Summer Rolls',
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
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:spiral slicer \n\n Step 2 :cutting board,knife \n\n Step 3 :tongs, 2 frying pans \n\n Step 4 :bowl \n\n Step 5 :cutting board \n\n Step 6 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageSummerRolls.length,
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
    "assets": "assets/step/summerRolls_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/summerRolls_S1.jpeg",
    "info": "Using a spiral slicer, cut carrot into thin strips.",
  },
  {
    "assets": "assets/step/summerRolls_S2.jpeg",
    "info":
        "Roughly chop Thai basil, cilantro, and mint. Cut tofu into thin rectangles. Cut pepper, onions, and lettuce into strips.",
  },
  {
    "assets": "assets/step/summerRolls_S3.jpeg",
    "info":
        "Using a grease-free pan, toast nuts over medium-low heat for approx. 3 – 5 min. until fragrant. In a frying pan, sauté tofu in some vegetable oil over medium-high heat for approx. 2 – 3 min. per side or until golden brown. Season with salt and pepper.",
  },
  {
    "assets": "assets/step/summerRolls_S4.jpeg",
    "info":
        "Dip rice wrappers evenly into water and allow to soak for approx. 1 min. Gently shake to remove excess water. Set aside on a plate or cutting board.",
  },
  {
    "assets": "assets/step/summerRolls_S5.jpeg",
    "info":
        "In the middle of the rice wrapper, layer tofu, carrot, pepper, peanuts, sesame seeds, green onions, and chopped herbs. Finish off with a dollop of peanut sauce.",
  },
  {
    "assets": "assets/step/summerRolls_S6.jpeg",
    "info":
        "In the same way you wrap a tortilla, fold the edges of the rice wrapper towards the center, bring forward the bottom, and roll forward with your thumbs until the roll is tight. Garnish the roll with sesame seeds and serve with a dipping sauce of your choice. Enjoy!",
  },
];

final imageSummerRolls = [
  "assets/step/summerRolls_M.jpeg",
  "assets/step/summerRolls_S1.jpeg",
  "assets/step/summerRolls_S2.jpeg",
  "assets/step/summerRolls_S3.jpeg",
  "assets/step/summerRolls_S4.jpeg",
  "assets/step/summerRolls_S5.jpeg",
  "assets/step/summerRolls_S6.jpeg",
];
