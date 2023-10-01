import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class cabbageRolls extends StatelessWidget {
  const cabbageRolls({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chinese Cabbage Rolls'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/cabbageRolls_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chinese Cabbage Rolls',
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
              'Ingredient List: \n\n[Step 1] :¼ clove garlic ⅝ green onions for serving ¼ Chinese cabbage\n\n[Step 2] :5 g shiitake mushrooms 5 g wood eat mushrooms 50 g ground pork 5 ml light soy sauce 5 ml oyster sauce salt\n\n [Step 3] :ice for ice bath \n\n [Step 4] : none\n\n [Step 5] :none\n\n [Step 6] :⅛ tsp starch 5 ml soy sauce 5 ml oyster sauce rice for serving vegetable oil for frying',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife \n\n Step 2 :2 mixing bowls \n\n Step 3 :steam oven,large bowl \n\n Step 4 :toothpicks \n\n Step 5 :unperforated steam cooking container,steam oven \n\nStep 6 : small saucepan, cooking spoon\n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageCabbageRolls.length,
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
    "assets": "assets/step/cabbageRolls_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/cabbageRolls_S1.jpeg",
    "info":
        "Peel and finely chop garlic, then set aside. Finely slice green onions and set aside, as well. Wash Chinese cabbage, cut off stem, and remove outer, dry leaves. According to serving size, remove some whole leaves for the cabbage rolls. Finely chop remaining inner leaves.",
  },
  {
    "assets": "assets/step/cabbageRolls_S2.jpeg",
    "info":
        "For filling, add mushrooms to a bowl with warm water and let soak until softened. Drain, finely chop, and add to a mixing bowl. Add chopped Chinese Cabbage and ground pork, and season with some of the light soy sauce, oyster sauce, and salt. Stir until combined and let marinate for approx. 30 min.",
  },
  {
    "assets": "assets/step/cabbageRolls_S3.jpeg",
    "info":
        "Blanche whole Chinese cabbage leaves in steam oven for approx. 1 min. Transfer to an ice bath-filled bowl directly afterwards.",
  },
  {
    "assets": "assets/step/cabbageRolls_S4.jpeg",
    "info":
        "Smooth blanched cabbage leaves onto a clean work surface and place two spoons of filling on each leaf. Roll from the bottom up, folding in both sides in order to seal in the filling. If desired, fix with toothpicks. Repeat until all filling is used up.",
  },
  {
    "assets": "assets/step/cabbageRolls_S5.jpeg",
    "info":
        "Transfer stuffed cabbage rolls to cooking container and steam at 100°C/210°F for approx. 20 min. Reserve cooking liquid for later use.",
  },
  {
    "assets": "assets/step/cabbageRolls_S6.jpeg",
    "info":
        "Heat oil a small saucepan. Fry chopped garlic on low heat for approx. 2 min., or until fragrant. Mix together starch with a little bit of water to form a slurry. Add cooking liquid, remaining light soy sauce, oyster sauce, slurry, and simmer for approx. 5 min. Sprinkle green onions on Chinese cabbage rolls, and serve with sauce and rice. Enjoy!",
  },
];

final imageCabbageRolls = [
  "assets/step/cabbageRolls_M.jpeg",
  "assets/step/cabbageRolls_S1.jpeg",
  "assets/step/cabbageRolls_S2.jpeg",
  "assets/step/cabbageRolls_S3.jpeg",
  "assets/step/cabbageRolls_S4.jpeg",
  "assets/step/cabbageRolls_S5.jpeg",
  "assets/step/cabbageRolls_S6.jpeg",
];
