import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class moussakaGreek extends StatelessWidget {
  const moussakaGreek({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moussaka'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/moussaka_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'moussaka',
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
              'Ingredient List: \n\n[Step 1] :100 g potatoes 125 g eggplants 50 g tomatoes 1 shallots ½ carrot ½ clove garlic 2½ g parsley 125 g tofu\n\n[Step 2] :1 tbsp olive oil\n\n [Step 3] :200 ml tomato sauce ⅛ tsp sugar salt pepper \n\n [Step 4] :none \n\n [Step 5]:25 ml soy cream 75 ml red bell pepper paste  \n\n [Step 6]:none  \n\n [Step 7]:none ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board, knife \n\n Step 2 :cooking spoon ,saucepan \n\n Step 3 :Veggie Wunder seasoning \n\n Step 4 :none \n\n Step 5 :oven,bowl(small) \n\n Step 6 :baking dish \n\n Step 7 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageMoussaka.length,
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
    "assets": "assets/step/moussaka_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/moussaka_S1.jpeg",
    "info":
        "Cut potato, eggplant, and tomato into slices. Finely dice shallots and carrots, mince garlic, and roughly chop parsley. Cut tofu into small cubes",
  },
  {
    "assets": "assets/step/moussaka_S2.jpeg",
    "info":
        "Heat olive oil in a large saucepan. Sauté chopped shallots, garlic, and carrots until translucent. Add tofu and continue to sauté for approx. 3 – 5 min",
  },
  {
    "assets": "assets/step/moussaka_S3.jpeg",
    "info":
        "Add tomato sauce to the saucepan, stir to combine, and season to taste with sugar and salt and pepper. Gently bring to a simmer",
  },
  {
    "assets": "assets/step/moussaka_S4.jpeg",
    "info": "Stir in chopped parsley and set aside",
  },
  {
    "assets": "assets/step/moussaka_S5.jpeg",
    "info":
        "Preheat oven to 180°C/355°C. In a small bowl, mix together soy cream and bell pepper paste",
  },
  {
    "assets": "assets/step/moussaka_S6.jpeg",
    "info":
        "To assemble the moussaka, place a layer of eggplant on the bottom of a casserole dish. Place potato slices on top of the eggplants and cover with soy cream mixture. Top with tomato slices",
  },
  {
    "assets": "assets/step/moussaka_S7.jpeg",
    "info":
        "Cover the moussaka with the reserved tomato sauce. Bake in a preheated oven at 180°C/355°C for approx. 45 min. until bubbling and lightly brown. Enjoy with a fresh salad on the side.",
  },
];

final imageMoussaka = [
  "assets/step/moussaka_M.jpeg",
  "assets/step/moussaka_S1.jpeg",
  "assets/step/moussaka_S2.jpeg",
  "assets/step/moussaka_S3.jpeg",
  "assets/step/moussaka_S4.jpeg",
  "assets/step/moussaka_S5.jpeg",
  "assets/step/moussaka_S6.jpeg",
  "assets/step/moussaka_S7.jpeg",
];
