import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class chickenTikka extends StatelessWidget {
  const chickenTikka({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lemon Chicken Tikka'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/chickenTikka_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Lemon Chicken Tikka',
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
              'Ingredient List: \n\n[Step 1] :2 cloves garlic 25 g ginger ½ lemon 2 chicken breasts\n\n[Step 2] :150 g yogurt 2½ g garam masala salt\n\n [Step 3] :2 tomatoes 20 g cilantro 1 onion \n\n [Step 4] :1 chili 1 tbsp vegetable oil 2½ g garam masala \n\n [Step 5] :none \n\n [Step 6] :150 g basmati rice 250 ml water salt \n\n [Step 7] :200 g heavy cream 1 chicken stock powder, e.g. Maggi Granulated Chicken Flavor Bouillon \n\n [Step 8] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:citrus press,oven,fine grater,cutting board,knife \n\n Step 2 :large bowl \n\n Step 3 :none \n\n Step 4 : sauce pan, cooking spoon \n\n Step 5 :baking sheetovenparchment paper \n\n Step 6 :saucepan (large) \n\n Step 7 :none \n\n Step 8 :serving plate \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageChickentikka.length,
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
    "assets": "assets/step/chickenTikka_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/chickenTikka_S1.jpeg",
    "info":
        "Preheat oven to 200°C/390°F. Peel and finely dice garlic. Grate ginger. Zest and juice lemon. Wash chicken breasts, pat dry, and cut into bite-sized pieces.",
  },
  {
    "assets": "assets/step/chickenTikka_S2.jpeg",
    "info":
        "In a large mixing bowl, mix together chicken, yogurt, ginger, half of the garlic, half of the garam masala, lemon juice and zest, and some salt.",
  },
  {
    "assets": "assets/step/chickenTikka_S3.jpeg",
    "info":
        "Cut tomatoes into small dices. Peel and finely dice onion. Pluck cilantro leaves from stem and finely dice stem.",
  },
  {
    "assets": "assets/step/chickenTikka_S4.jpeg",
    "info":
        "In a large saucepan, sauté onion, remainder of garlic, chopped chili, and cilantro stems in vegetable oil over high heat for approx. 1 min. Then, add diced tomato, remainder of garam masala, and continue to cook for another 3 min.",
  },
  {
    "assets": "assets/step/chickenTikka_S5.jpeg",
    "info":
        "Transfer marinated chicken to a parchment-lined baking sheet and bake in preheated oven 180°C/390°F for approx. 15 min. until golden brown.",
  },
  {
    "assets": "assets/step/chickenTikka_S6.jpeg",
    "info":
        "In a separate large saucepan, add rice, water, and salt. Bring to a boil, cover, reduce heat to low, and cook for approx. 12 – 14 min. until rice is tender and has absorbed all the liquid.",
  },
  {
    "assets": "assets/step/chickenTikka_S7.jpeg",
    "info":
        "Add cream and bouillon to first pan, bring to a boil for approx. 1 – 2 min., reduce heat, and continue to cook for another 10 min.",
  },
  {
    "assets": "assets/step/chickenTikka_S8.jpeg",
    "info":
        "Add baked chicken to pan and stir well to incorporate. Transfer rice to a serving plate, ladle lemon chicken tikka masala on top, and garnish with cilantro leaves.",
  },
];

final imageChickentikka = [
  "assets/step/chickenTikka_M.jpeg",
  "assets/step/chickenTikka_S1.jpeg",
  "assets/step/chickenTikka_S2.jpeg",
  "assets/step/chickenTikka_S3.jpeg",
  "assets/step/chickenTikka_S4.jpeg",
  "assets/step/chickenTikka_S5.jpeg",
  "assets/step/chickenTikka_S6.jpeg",
  "assets/step/chickenTikka_S7.jpeg",
  "assets/step/chickenTikka_S8.jpeg",
];
