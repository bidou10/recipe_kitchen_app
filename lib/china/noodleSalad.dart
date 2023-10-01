import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class noodleSalad extends StatelessWidget {
  const noodleSalad({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chinese noodle Salad'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/noodleSalad_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chinese Noodle Salad',
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
              'Ingredient List: \n\n[Step 1] :10 g cilantro 1 cucumber 1 red onion 2 cloves garlic ½ chili pepper\n\n[Step 2] :10 shrimp vegetable oil for frying salt pepper\n\n [Step 3] :200 g glass noodles \n\n [Step 4] :4 tbsp toasted sesame oil 8 tbsp fish sauce 2 tbsp lemon juice',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1: vegetable peeler,scissors,cutting board,knife\n\n Step 2 :frying pan \n\n Step 3 :large saucepan , colander \n\n Step 4 :lemon press, large mixing bowl \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageNoodleSalad.length,
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
    "assets": "assets/step/noodleSalad_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/noodleSalad_S1.jpeg",
    "info":
        "Chop cilantro. Peel cucumber, halve lengthwise, scoop out seeds with a spoon, and cut into slices. Peel red onion, cut in half, and thinly slice. Peel and finely chop garlic cloves. Finely slice or cut chili pepper with scissors or knife. Set aside.",
  },
  {
    "assets": "assets/step/noodleSalad_S2.jpeg",
    "info":
        "Peel and devein shrimp, add to a frying pan, and sauté in vegetable oil over medium-high heat with salt and pepper. Cook for approx. 2 – 4 min., until shrimp turn pink, then remove from heat and set aside.",
  },
  {
    "assets": "assets/step/noodleSalad_S3.jpeg",
    "info":
        "Steep glass noodles, according to package instructions, in hot water for approx. 5 – 6 min. Drain glass noodles and briefly rinse under cold water.",
  },
  {
    "assets": "assets/step/noodleSalad_S4.jpeg",
    "info":
        "In a large bowl, combine cucumber, onion, garlic, chili pepper, toasted sesame oil, fish sauce, and lemon juice and toss. Add drained glass noodles to bowl along with shrimp. Mix everything thoroughly together. If desired, add more lime juice, sesame oil, or fish sauce to taste. Top with chopped coriander, serve and enjoy!",
  },
];

final imageNoodleSalad = [
  "assets/step/noodleSalad_M.jpeg",
  "assets/step/noodleSalad_S1.jpeg",
  "assets/step/noodleSalad_S2.jpeg",
  "assets/step/noodleSalad_S3.jpeg",
  "assets/step/noodleSalad_S4.jpeg",
];
