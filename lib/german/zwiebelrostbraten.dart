import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class Zwiebelrostbraten extends StatelessWidget {
  const Zwiebelrostbraten({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zwiebelrostbraten'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/zwiebelrostbraten_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Zwiebelrostbraten',
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
              'Ingredient List: \n\n[Step 1] :1 onion ½ clove garlic 400 g potatoes salt\n\n[Step 2] :2 tbsp vegetable oil 1 tsp sugar 1 bay leaf ½ tsp tomato paste 60 ml red wine 200 ml beef stock salt\n\n [Step 3] :1 tbsp vegetable oil 1½ tsp sugar salt \n\n [Step 4] :2 rump steaks 3 tbsp unsalted butter (cold) salt pepper fried onion (for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:knife, cutting board,pot \n\n Step 2 :frying pan,cooking spoon \n\n Step 3 : sieve , frying pan \n\n Step 4 :Aluminum foil \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageZwiebelrostbraten.length,
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
    "assets": "assets/step/zwiebelrostbraten_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/zwiebelrostbraten_S1.jpeg",
    "info":
        "alve onion and slice thinly. Thinly slice garlic. Wash potatoes and place in a pot of salted water. Bring to a boil and let cook for approx. 10 min.",
  },
  {
    "assets": "assets/step/zwiebelrostbraten_S2.jpeg",
    "info":
        "Heat vegetable oil in a frying pan over medium heat. Add onions and sauté until translucent, then add salt and sugar. Add bay leaf and fry for approx. 5 – 8 min. Add tomato paste and fry for approx. 5 min., stirring occasionally. Deglaze with red wine and let reduce until wine is almost completely cooked off. Add beef stock and let simmer for approx. 10 min., then remove from heat",
  },
  {
    "assets": "assets/step/zwiebelrostbraten_S3.jpeg",
    "info":
        "Drain potatoes, let cool for a few minutes, then peel. Heat vegetable oil in a frying pan over medium-high heat and sauté potatoes until golden, then add sugar, season with salt, remove from heat, and set aside",
  },
  {
    "assets": "assets/step/zwiebelrostbraten_S4.jpeg",
    "info":
        "To prepare the steaks, make several incisions along the cap of fat. Heat a frying pan over medium-high heat. Season steaks with salt, transfer to the pan and fry until seared, then add pepper. Wrap each steak in foil and let rest for approx. 3 min. Add butter, salt, and pepper to the onion sauce. Serve steaks with onion sauce and potatoes. Enjoy!",
  },
];

final imageZwiebelrostbraten = [
  "assets/step/zwiebelrostbraten_M.jpeg",
  "assets/step/zwiebelrostbraten_S1.jpeg",
  "assets/step/zwiebelrostbraten_S2.jpeg",
  "assets/step/zwiebelrostbraten_S3.jpeg",
  "assets/step/zwiebelrostbraten_S4.jpeg",
];
