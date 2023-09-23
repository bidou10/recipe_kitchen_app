import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class brotchenkranz extends StatelessWidget {
  const brotchenkranz({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brötchenkranz'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/brötchenkranz_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Brötchenkranz',
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
              'Ingredient List: \n\n[Step 1] :4⅔ g fresh yeast 22¼ ml water (lukewarm) 5½ ml milk ⅛ tbsp sugar\n\n[Step 2] :55½ g flour ⅛ tsp salt 3⅓ ml olive oil\n\n [Step 3] :⅔ tbsp unsalted butter (melted) sesame seed poppy seed flaxseed sunflower seed \n\n [Step 4] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:bowl \n\n Step 2 :hand mixer with dough hook,kitchen towel \n\n Step 3 :ovenproof pot,pastry brush \n\n Step 4 :oven \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageBrotchenkranz.length,
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
    "assets": "assets/step/brötchenkranz_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/brötchenkranz_S1.jpeg",
    "info":
        "Mix the yeast in a bowl with lukewarm water. Add milk and sugar and stir until well combined",
  },
  {
    "assets": "assets/step/brötchenkranz_S2.jpeg",
    "info":
        "Add flour, salt, and oil to the yeast mixture and knead for approx. 5 - 8 min. with a hand mixer with a dough hook until a smooth dough forms. Cover with a clean kitchen towel and leave in a warm place for 1 hr",
  },
  {
    "assets": "assets/step/brötchenkranz_S3.jpeg",
    "info":
        "In the meantime, grease the bottom and sides of an oven-proof pan. After the dough has doubled in size, divide it into even pieces. Then brush melted butter on top and dip in either sesame seeds, poppy seeds, flaxseeds, or sunflower seeds—alternating the seeds as you brush and dip",
  },
  {
    "assets": "assets/step/brötchenkranz_S4.jpeg",
    "info":
        "Transfer dough to the greased pan and let rest, covered, for another 20 min. Preheat the oven to 190°C/375°F. Bake the bread in the lower third of the oven for approx. 25 - 30 min., or until they sound hollow when you gently tap on them. Enjoy!",
  },
];

final imageBrotchenkranz = [
  "assets/step/brötchenkranz_M.jpeg",
  "assets/step/brötchenkranz_S1.jpeg",
  "assets/step/brötchenkranz_S2.jpeg",
  "assets/step/brötchenkranz_S3.jpeg",
  "assets/step/brötchenkranz_S4.jpeg",
];
