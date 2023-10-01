import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class gazpacho extends StatelessWidget {
  const gazpacho({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gazpacho'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/gazpacho_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'gazpacho',
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
              'Ingredient List: \n\n[Step 1] :⅔ green bell peppers ⅓ kg tomato ⅓ cucumber ⅓ clove garlic 1 slices white bread \n\n[Step 2] :3⅓ ml sherry vinegar ,20 ml olive oil, salt, pepper\n\n [Step 3] : crouton (for serving) basil (for garnish) parsley (for garnish) dill (for garnish)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife,bowl (small)blender,bowl (large) \n\n Step 2 :none \n\n Step 3 :none \n\n',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageGazpacho.length,
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
    "assets": "assets/step/gazpacho_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/gazpacho_S1.jpeg",
    "info":
        "Deseed some tomatoes, ½ bell peppers and ¼ cucumber. Finely chop, add to a small bowl, and set aside in the fridge. Roughly chop the rest of the tomatoes, cucumber, and bell pepper. Peel the garlic. Add roughly chopped vegetables and garlic to a blender. Remove the crust of bread slices, tear them apart, and add them to a large bowl. Drizzle with just enough water to soften the bread",
  },
  {
    "assets": "assets/step/gazpacho_S2.jpeg",
    "info":
        "Add softened bread, sherry vinegar, some olive oil, salt, and pepper to the blender and start blending on low speed. Continue blending until you reach a smooth consistency. If needed, add some water and increase the speed. Refrigerate until ready to serve.",
  },
  {
    "assets": "assets/step/gazpacho_S3.jpeg",
    "info":
        "Season cold gazpacho to taste with more salt and pepper. Add gazpacho to your serving bowls (or cups) and add reserved, finely chopped vegetables on top. Finish with croutons, a drizzle of olive oil and, if desired, fresh basil, parsley, and dill. Enjoy!",
  },
];

final imageGazpacho = [
  "assets/step/gazpacho_M.jpeg",
  "assets/step/gazpacho_S1.jpeg",
  "assets/step/gazpacho_S2.jpeg",
  "assets/step/gazpacho_S3.jpeg",
];
