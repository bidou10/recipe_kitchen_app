import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class sweetCornGazpacho extends StatelessWidget {
  const sweetCornGazpacho({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sweet Corn Gazpacho'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/sweetCornGazpacho_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Sweet Corn Gazpacho',
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
              'Ingredient List: \n\n[Step 1] :3 sweet corn 1 yellow bell pepper 1 chili 1 onion ½ cucumber\n\n[Step 2] :1 clove garlic 200 g yellow tomatoes 2 tbsp olive oil 2 tbsp white wine vinegar 200 ml water salt pepper\n\n [Step 3] :1 sweet corn 50 g yellow tomatoes 2 sprigs basil 50 g croutons 4 tbsp yogurt yogurt (for serving) olive oil (for serving) \n\n',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife,peeler \n\n Step 2 :blender \n\n Step 3 :cutting board,knife \n\n   ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageChorizoPotato.length,
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
    "assets": "assets/step/sweetCornGazpacho_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/sweetCornGazpacho_S1.jpeg",
    "info":
        "Cut corn kernels from most of the cobs. Deseed bell pepper, halve chili, and chop the onion. Peel cucumber and chop.",
  },
  {
    "assets": "assets/step/sweetCornGazpacho_S2.jpeg",
    "info":
        "Add chopped vegetables, garlic, most of the yellow tomatoes, olive oil, white wine vinegar, and water to a blender, season with salt and pepper, and blend until smooth. Refrigerate the soup for approx. 1 hr.",
  },
  {
    "assets": "assets/step/sweetCornGazpacho_S3.jpeg",
    "info":
        "Cut corn kernels from remaining cob and halve yellow tomatoes for serving. Serve gazpacho in bowls with corn, tomatoes, fresh basil leaves, and croutons. Drizzle with yogurt and olive oil. Enjoy!",
  },
];

final imageChorizoPotato = [
  "assets/step/sweetCornGazpacho_M.jpeg",
  "assets/step/sweetCornGazpacho_S1.jpeg",
  "assets/step/sweetCornGazpacho_S2.jpeg",
  "assets/step/sweetCornGazpacho_S3.jpeg",
];
