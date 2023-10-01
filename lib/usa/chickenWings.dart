import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class chickenWings extends StatelessWidget {
  const chickenWings({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken Wings'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/chickenWings_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chicken Wings',
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
              'Ingredient List: \n\n[Step 1] :2 tbsp mustard 25 ml vegetable oil 1 tbsp soy sauce ¼ tsp Tabasco ½ tbsp white wine vinegar ½ tbsp tomato paste 2 tbsp brown sugar ½ tbsp hot paprika powder 1 cloves garlic salt pepper\n\n[Step 2] :none\n\n [Step 3] :oven,baking sheet,parchment paper,tongs (optional)\n\n [Step 4] : Meat Lover seasoning (optional)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1: large bowl, garlic press \n\n Step 2 :resealable freezer bag (optional) \n\n Step 3 :none \n\n Step 4 :Meat Lover seasoning \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageChickenWings.length,
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
    "assets": "assets/step/chickenWings_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/chickenWings_S1.jpeg",
    "info":
        "Mix mustard, vegetable oil, soy sauce, tabasco, white wine vinegar, tomato paste, brown sugar, paprika, crushed garlic, salt, and pepper to create the marinade.",
  },
  {
    "assets": "assets/step/chickenWings_S2.jpeg",
    "info":
        "Next, marinate the chicken wings. Leave covered and chilled for at least 2 hours or overnight to allow the flavors to sink in.",
  },
  {
    "assets": "assets/step/chickenWings_S3.jpeg",
    "info":
        "Preheat the oven to 180°C/355°F. Now, take the marinated chicken wings, allowing any surplus marinade to drip off, and put on a baking rack or a baking sheet lined with parchment paper.",
  },
  {
    "assets": "assets/step/chickenWings_S4.jpeg",
    "info":
        "Bake in a preheated oven at 180°C/355°F for approx. 30 min until golden. Turn the wings after 15 min., so that they can brown evenly on both sides. Serve with our MEAT LOVER seasoning if liking and a variety of dips, as desired.",
  },
];

final imageChickenWings = [
  "assets/step/chickenWings_M.jpeg",
  "assets/step/chickenWings_S1.jpeg",
  "assets/step/chickenWings_S2.jpeg",
  "assets/step/chickenWings_S3.jpeg",
  "assets/step/chickenWings_S4.jpeg",
];
