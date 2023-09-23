import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class kohlsuppe extends StatelessWidget {
  const kohlsuppe({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kohlsuppe'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/kohlsuppe_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Kohlsuppe',
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
              'Ingredient List: \n\n[Step 1] :266⅔ g white cabbages 166⅔ g waxy potatoes 50 g celery roots ⅔ carrots ⅓ leek ⅔ onions ⅔ cloves garlic\n\n[Step 2] :⅔ tbsp vegetable oil ⅛ tsp sweet paprika powder ⅓ tsp ground cumin ⅔ l water ⅓ tbsp lemon juice ⅓ bay leaf ½ tbsp mustard salt pepper parsley (for serving) bread (for serving) crème fraîche (for serving)\n\n',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:knife,cutting board, peeler \n\n Step 2 : saucepan (large),cooking spoon  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageKohlsuppe.length,
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
    "assets": "assets/step/kohlsuppe_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/_kohlsuppeS1.jpeg",
    "info":
        "Remove the outer leaves and the core of the cabbage. Cut it into bite-size pieces. Peel the potatoes, celery, and carrots and cut into bite-size pieces. Clean the leek and finely dice together with the onions and garlic.",
  },
  {
    "assets": "assets/step/kohlsuppe_S2.jpeg",
    "info":
        "Heat oil in a large saucepan over medium-high heat, then add onions, garlic, and leeks and sauté. Add the rest of the chopped ingredients and sauté for another 5 min. Add paprika powder and cumin and fry briefly. Deglaze with the water and lemon juice, then add bay leaves and mustard. Generously season with salt and pepper. Increase the heat, let the soup bring to a boil, then reduce heat and let simmer for approx. 30 min. Season again with salt and pepper and more lemon juice to taste. Sprinkle the cabbage soup with chopped parsley and serve with bread and, if you like, crème fraîche. Enjoy!",
  },
];

final imageKohlsuppe = [
  "assets/step/kohlsuppe_M.jpeg",
  "assets/step/kohlsuppe_S1.jpeg",
  "assets/step/kohlsuppe_S2.jpeg",
];
