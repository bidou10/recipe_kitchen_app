import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class Kartoffelsuppe extends StatelessWidget {
  const Kartoffelsuppe({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kartoffelsuppe'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/kartoffelsuppe_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Kartoffelsuppe',
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
              'Ingredient List: \n\n[Step 1] :50 g Vienna sausages ½ kg waxy potato ½ onion 1 carrots 100 g celery ¼ leek 2½ sprigs parsley\n\n[Step 2] :100 g bacon 250 ml vegetable broth 1 tbsp oil ½ l water ⅛ tsp dried marjoram\n\n [Step 3] :½ tsp mustard pepper ground nutmeg 2½ sprigs parsley ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife,peeler \n\n Step 2 :large pot,spatula \n\n Step 3 :immersion blender ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageKartoffelsuppe.length,
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
    "assets": "assets/step/kartoffelsuppe_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/kartoffelsuppe_S1.jpeg",
    "info":
        "Cut sausages into slices. Peel and dice potatoes, carrots, and celery. Peel and chop onion. Wash and slice leek. Chop parsley.",
  },
  {
    "assets": "assets/step/kartoffelsuppe_S2.jpeg",
    "info":
        "Put bacon in a pot with some hot oil, add chopped onion and sauté until onion is translucent. Add diced potatoes, carrots, leek and celery. Sauté for approx.10 mins.more, then deglaze with vegetable stock and water. Add marjoram and let cook for approx. 30 mins.",
  },
  {
    "assets": "assets/step/kartoffelsuppe_S3.jpeg",
    "info":
        "Remove 1/3 of all the cooked vegetables and set aside, then use an immersion blender to purée the rest in the pot. Put previously removed vegetables back, and add mustard, pepper, nutmeg, and Vienna sausage slices. Leave to simmer for approx.10 mins. Serve soup with some chopped parsley sprinkled on top. Enjoy!",
  },
];

final imageKartoffelsuppe = [
  "assets/step/kartoffelsuppe_M.jpeg",
  "assets/step/kartoffelsuppe_S1.jpeg",
  "assets/step/kartoffelsuppe_S2.jpeg",
  "assets/step/kartoffelsuppe_S3.jpeg",
];
