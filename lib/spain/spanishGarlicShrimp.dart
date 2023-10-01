import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class spanishGarlicShrimp extends StatelessWidget {
  const spanishGarlicShrimp({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Garlic Shrimp'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/SpanishGarlicShrimp_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Spanish Garlic Shrimp',
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
              'Ingredient List: \n\n[Step 1] :200 g shrimp 3 cloves garlic 10 g parsley 4 tbsp olive oil 1 tsp chili flakes\n\n[Step 2] :3½ tbsp white, wine, salt baguette for serving\n\n ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:pantongscutting boardknife \n\n Step 2 :none \n\n',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageSpanishGarlicShrimp.length,
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
    "assets": "assets/step/SpanishGarlicShrimp_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/SpanishGarlicShrimp_S1.jpeg",
    "info":
        "If using frozen shrimp, thaw and drain. Peel garlic and thinly slice. Roughly chop parsley. Heat olive in a pan over medium heat. Add garlic and sauté for approx. 1 min., taking care not to brown the garlic. Add shrimp and chili flakes to pan. Sauté over medium heat until shrimp are cooked all the through, approx. 3 – 4 min.",
  },
  {
    "assets": "assets/step/SpanishGarlicShrimp_S2.jpeg",
    "info":
        "Add white wine to pan with shrimp and cook for approx. 1 – 2 min. more over medium heat. Remove from heat and sprinkle with chopped parsley and salt. Served with toasted baguette slices. Enjoy!",
  },
];

final imageSpanishGarlicShrimp = [
  "assets/step/SpanishGarlicShrimp_M.jpeg",
  "assets/step/SpanishGarlicShrimp_S1.jpeg",
  "assets/step/SpanishGarlicShrimp_S2.jpeg",
];
