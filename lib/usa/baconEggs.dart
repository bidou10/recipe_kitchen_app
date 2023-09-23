import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class baconEggs extends StatelessWidget {
  const baconEggs({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bacon eggs muffin'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/baconEggs_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Bacon eggs muffin',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Recipe for five persons',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Ingredient List: \n\n[Step 1] :8⅓ g cheddar cheese\n\n[Step 2] :5 slices bread\n\n [Step 3] :⅞ tbsp butter \n\n [Step 4] :10 strips bacon\n\n [Step 5] :none\n\n [Step 6] :none\n\n [Step 7] :5 eggs',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:oven, box grater \n\n Step 2 :small bowl \n\n Step 3 :frying pan , cooking spoon \n\n Step 4 :frying pan \n\n Step 5 :muffin tin \n\nStep 6 :none \n\nStep 7 :oven \n\n',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageBaconEggs.length,
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
    "assets": "assets/step/baconEggs_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/baconEggs_S1.jpeg",
    "info":
        "Preheat the oven to 180°C/350°F. Roughly grate cheese using a box grater.",
  },
  {
    "assets": "assets/step/baconEggs_S2.jpeg",
    "info":
        "Using a small, circular bowl, cut rounds from each slice of bread.",
  },
  {
    "assets": "assets/step/baconEggs_S3.jpeg",
    "info":
        "In a frying pan, sauté bread rounds in butter over medium heat for approx. 1 - 2 min. per side until golden brown.",
  },
  {
    "assets": "assets/step/baconEggs_S4.jpeg",
    "info":
        "In a separate frying pan, sauté bacon over medium-low heat without any oil until slightly brown and lightly curled. The bacon should not be too crispy, as it needs to be flexible to fit into the muffin tin.",
  },
  {
    "assets": "assets/step/baconEggs_S5.jpeg",
    "info":
        "Place two strips of bacon in each muffin cup. Then, place bread on top of bacon and press gently so that it fits securely in the muffin cup.",
  },
  {
    "assets": "assets/step/baconEggs_S6.jpeg",
    "info": "Evenly divide grated cheddar cheese among muffin cups.",
  },
  {
    "assets": "assets/step/baconEggs_S7.jpeg",
    "info":
        "Next, crack one egg into each muffin cup. Bake in oven at 180°C/350°F for approx. 8 – 10 min. Enjoy!",
  },
];

final imageBaconEggs = [
  "assets/step/baconEggs_M.jpeg",
  "assets/step/baconEggs_S1.jpeg",
  "assets/step/baconEggs_S2.jpeg",
  "assets/step/baconEggs_S3.jpeg",
  "assets/step/baconEggs_S4.jpeg",
  "assets/step/baconEggs_S5.jpeg",
  "assets/step/baconEggs_S6.jpeg",
  "assets/step/baconEggs_S7.jpeg",
];
