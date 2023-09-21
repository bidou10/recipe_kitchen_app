import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class spanakopitaGreek extends StatelessWidget {
  const spanakopitaGreek({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanakopita'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/spanakopita_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'spanakopita',
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
              'Ingredient List: \n\n[Step 1] :266⅔ g spinach (frozen) ⅓ onion ⅔ cloves garlic salt pepper ground nutmeg unsalted butter (for frying)\n\n[Step 2] :66⅔ g feta cheese 33⅓ g cream cheese 1 eggs 1 sprigs parsley salt pepper\n\n [Step 3] :66⅔ g unsalted butter 2⅔ sheets phyllo dough \n\n [Step 4] :',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:sieve, cutting board,knife,frying pan \n\n Step 2 :bowl \n\n Step 3 :oven,saucepan,baking dish,pastry brush \n\n Step 4 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageSpanakopita.length,
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
    "assets": "assets/step/spanakopita_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/spanakopita_S1.jpeg",
    "info":
        "Let spinach defrost and drain in a sieve. Peel and finely chop onion and garlic. Heat butter in a frying pan over medium heat and fry onion and garlic until translucent. Add defrosted, drained spinach and keep frying for approx. 3 min. Season with salt, pepper, and nutmeg to taste. Remove spinach mixture from the frying pan and transfer back to the sieve to drain and cool",
  },
  {
    "assets": "assets/step/spanakopita_S2.jpeg",
    "info":
        "Add cooled spinach mixture to a bowl. Crumble feta cheese with your hands and add to the bowl, along with cream cheese, eggs, and parsley leaves. Stir to combine and season with salt and pepper to taste",
  },
  {
    "assets": "assets/step/spanakopita_S3.jpeg",
    "info":
        "Preheat oven to 160°C/320°F. Melt butter and lightly brush a baking dish with it. One by one, brush one side of each phyllo dough sheet with melted butter and layer them into the baking dish. Make sure that the edges of the sheets overhang the rim oft he baking sheet. Add the spinach mixture and smooth the top. Fold overhanging phyllo dough over the spinach filling, so it’s partly covered with dough. Brush the top of the phyllo dough with remaining melted butter",
  },
  {
    "assets": "assets/step/spanakopita_S4.jpeg",
    "info":
        "Bake spinach pie at 160°C/320°F for approx. 45 min., or until golden brown. Enjoy",
  },
];

final imageSpanakopita = [
  "assets/step/spanakopita_M.jpeg",
  "assets/step/spanakopita_S1.jpeg",
  "assets/step/spanakopita_S2.jpeg",
  "assets/step/spanakopita_S3.jpeg",
  "assets/step/spanakopita_S4.jpeg",
];
