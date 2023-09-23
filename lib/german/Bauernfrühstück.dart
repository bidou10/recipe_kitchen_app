import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class bauernfruhstuck extends StatelessWidget {
  const bauernfruhstuck({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bauernfrühstück'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Bauernfrühstück',
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
              'Ingredient List: \n\n[Step 1] :500 g waxy potatoes salt\n\n[Step 2] :1 onion 10 g chives 4 eggs 2 tbsp milk salt pepper\n\n [Step 3] :2 tbsp clarified butter 100 g bacon pickles (for serving) ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:pot (large), colander \n\n Step 2 :cutting board,knife,bowl,whisk \n\n Step 3 : nonstick pan (with lid)spatula ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageBauernfruhstuck.length,
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
        "Cook potatoes with skin on in a pot of boiling and salted water and cook for approx. 18–20 min., depending on the potato size, until a fork can poke through with some resistance. Then drain and let the potatoes cool down.",
  },
  {
    "assets": "assets/step/brötchenkranz_S2.jpeg",
    "info":
        "While the potatoes are cooking, dice onion and thinly slice chives. In a bowl, whisk eggs with milk and then season with salt and pepper. Peel the potatoes and cut into approx. 1.5 cm /0.6 in. thick slices.",
  },
  {
    "assets": "assets/step/brötchenkranz_S3.jpeg",
    "info":
        "Melt clarified butter in a big non-stick frying pan. Then add potato slices and fry for approx. 8–10 min. or until golden. Then add the chopped onion and cubed bacon and fry briefly. Add the egg mixture and fry until the bottom is golden and crispy. Then cook covered for approx. 5–8 min. over medium-low heat until the egg is set. Serve with chives and pickles. Enjoy!",
  },
];

final imageBauernfruhstuck = [
  "assets/step/brötchenkranz_M.jpeg",
  "assets/step/brötchenkranz_S1.jpeg",
  "assets/step/brötchenkranz_S2.jpeg",
  "assets/step/brötchenkranz_S3.jpeg",
];
