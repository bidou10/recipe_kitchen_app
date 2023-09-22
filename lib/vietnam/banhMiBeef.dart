import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class BanhMiBeef extends StatelessWidget {
  const BanhMiBeef({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banh Mi Beef'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/banhMiBeef_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Banh Mi Beef',
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
              'Ingredient List: \n\n[Step 1] :5 strips bacon\n\n[Step 2] :250 g beef\n\n [Step 3] :¼ cucumber ½ chili 10 g cilantro 5 g mint ¼ stalks celery ½ onion 1 carrots \n\n [Step 4] :salt,pepper \n\n [Step 5] :vegetable oil for frying \n\n [Step 6] :¼ lime 2½ tbsp fish sauce salt pepper \n\n [Step 7] :½ tbsp mayonnaise 1 baguettes ¼ lime',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:frying pan, tongs \n\n Step 2 :cutting board, knife \n\n Step 3 :none \n\n Step 4 :bowl \n\n  Step 5 :frying pan \n\n  Step 6 : \n\n  Step 7 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageBanhMiBeef.length,
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
    "assets": "assets/step/banhMiBeef_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/banhMiBeef_S1.jpeg",
    "info":
        "In a frying pan, sauté bacon over medium-low heat for approx. 5 - 8 min. until crisp and golden. Set aside.",
  },
  {
    "assets": "assets/step/banhMiBeef_S2.jpeg",
    "info": "Cut beef into thin strips, approx. 2 cm thick.",
  },
  {
    "assets": "assets/step/banhMiBeef_S3.jpeg",
    "info":
        "Peel and seed cucumber and cut into small cubes. Remove seeds and finely cut chilies. Chop herbs. Thinly slice celery. Julienne onion and carrot.",
  },
  {
    "assets": "assets/step/banhMiBeef_S4.jpeg",
    "info":
        "In a bowl, mix together half of the chopped cilantro and the diced cucumber. Season with salt and pepper. Set aside.",
  },
  {
    "assets": "assets/step/banhMiBeef_S5.jpeg",
    "info":
        "In a frying pan, sauté beef in some vegetable oil over medium-high heat for approx. 5 - 7 min. until browned.",
  },
  {
    "assets": "assets/step/banhMiBeef_S6.jpeg",
    "info":
        "Season beef with salt, pepper, and lime juice. Deglaze with fish sauce.",
  },
  {
    "assets": "assets/step/banhMiBeef_S7.jpeg",
    "info":
        "Cut baguette lengthwise, but not all the way through. Spread top and bottom layer of baguette with mayonnaise. Layer with bacon, beef, vegetables, and herbs. Garnish with remainder of chopped cilantro and top it off with a drizzle of lime juice. Enjoy",
  },
];

final imageBanhMiBeef = [
  "assets/step/banhMiBeef_M.jpeg",
  "assets/step/banhMiBeef_S1.jpeg",
  "assets/step/banhMiBeef_S2.jpeg",
  "assets/step/banhMiBeef_S3.jpeg",
  "assets/step/banhMiBeef_S4.jpeg",
  "assets/step/banhMiBeef_S5.jpeg",
  "assets/step/banhMiBeef_S6.jpeg",
  "assets/step/banhMiBeef_S7.jpeg",
];
