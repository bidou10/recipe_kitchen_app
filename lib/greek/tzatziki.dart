import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class Tzatziki extends StatelessWidget {
  const Tzatziki({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tzatziki'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/tzatziki_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Tzatziki',
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
              'Ingredient List: \n\n[Step 1] :300 g pork shoulder 300 g leg of lamb 2 red onions 2 cloves garlic 1 chili 1 red bell pepper 20 g parsley 10 g dill ½ cucumber\n\n[Step 2] :250 g Greek yogurt 1 clove garlic 1 tbsp olive oil salt pepper\n\n [Step 3] :1 clove garlic vegetable oil for frying salt pepper paprika powder oregano for garnishing ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:box grater,cutting board,knife \n\n Step 2 :large mixing bowl \n\n Step 3 :wooden spatula, large fryin pan ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageTzatziki.length,
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
    "assets": "assets/step/tzatziki_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/tzatziki_S1.jpeg",
    "info":
        "Cut meat into thin strips and onions into fine rings. Finely dice garlic and chili. Cut bell pepper into strips. Roughly chop parsley and dill. Coarsely grate cucumber using large holes of a box grater",
  },
  {
    "assets": "assets/step/tzatziki_S2.jpeg",
    "info":
        "In a large mixing bowl, combine yogurt, cucumber, dill, parsley, half of the garlic, and olive oil. Season to taste with salt and pepper",
  },
  {
    "assets": "assets/step/tzatziki_S3.jpeg",
    "info":
        "In a large frying pan, sauté meat in some vegetable oil over medium heat for approximately 3 – 4 min. Then, add chili and rest of the garlic and continue to cook for another 1 – 2 min. Finally, add onion and bell pepper, stir well to combine, and cook for another 2 – 3 min. Remove from heat and season to taste with salt, pepper, and paprika powder. Garnish with oregano and serve with tzatziki on the side. Enjoy!",
  },
];

final imageTzatziki = [
  "assets/step/tzatziki_M.jpeg",
  "assets/step/tzatziki_S1.jpeg",
  "assets/step/tzatziki_S2.jpeg",
  "assets/step/tzatziki_S3.jpeg",
];
