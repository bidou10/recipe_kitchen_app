import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class americanSteak extends StatelessWidget {
  const americanSteak({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('American Steak'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/americanSteak_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Amercian Steak',
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
              'Ingredient List: \n\n[Step 1] :2 russet potatoes\n\n[Step 2] :400 g beef tenderloin 2 sprigs rosemary 2 sprigs thyme 2 cloves garlic olive oil (for marinating)\n\n [Step 3] :10g chives \n\n [Step 4] :300 g sour cream 1 lemon salt pepper butter (for serving) ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:grill,oven,aluminum foil,tongs \n\n Step 2 :grill ,oven \n\n Step 3 :cutting board, knife \n\n Step 4 :bowl (small) \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageSteak.length,
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
    "assets": "assets/step/americanSteak_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/americanSteak_S1.jpeg",
    "info":
        "Preheat the oven to 60°C (140°F). Preheat the grill. Wrap each potato in some aluminum foil and place on grill for approx. 1 hour. Turn every 20 min. to ensure even cooking.",
  },
  {
    "assets": "assets/step/americanSteak_S2.jpeg",
    "info":
        "Drizzle olive oil on both sides of the steak and season with rosemary and thyme. Add crushed garlic cloves and precook in the oven for approx. 15 – 20 min . Remove meat from the oven, take off herbs, and grill for approx. 2 – 3 min per side. Set aside to rest for approx. 5 – 10 min.",
  },
  {
    "assets": "assets/step/americanSteak_S3.jpeg",
    "info": "In the meantime, finely chop chives.",
  },
  {
    "assets": "assets/step/americanSteak_S4.jpeg",
    "info":
        "Now, combine sour cream with finely chopped chives, zest of one lemon, and juice of half a lemon. Season with salt and pepper and serve with baked potato and steak.",
  },
];

final imageSteak = [
  "assets/step/americanSteak_M.jpeg",
  "assets/step/americanSteak_S1.jpeg",
  "assets/step/americanSteak_S2.jpeg",
  "assets/step/americanSteak_S3.jpeg",
  "assets/step/americanSteak_S4.jpeg",
];
