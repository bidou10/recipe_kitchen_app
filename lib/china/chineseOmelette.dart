import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class chineseOmlette extends StatelessWidget {
  const chineseOmlette({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chinese Omelette'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/chineseOmelette_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chinese Omelette',
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
              'Ingredient List: \n\n[Step 1] :4 eggs ½ onion ½ tsp starch ½ red bell pepper 2 cloves garlic 1 tsp ginger 1 scallion salt\n\n[Step 2] :½ tbsp vegetable oil\n\n [Step 3] :2 tbsp vegetable oil \n\n [Step 4] :½ tbsp vegetable oil 1 tbsp dark rice vinegar 1 tbsp soy sauce 1 tbsp sugar 4 tbsp water ½ tsp starch 4 tbsp water sesame seed (for garnish) rice (cooked, for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:bowl (large)whisk,cutting board,knife \n\n Step 2 :nonstick pan, spatula \n\n Step 3 :paper towels \n\n Step 4 : bowl (small) \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageOmelette.length,
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
    "assets": "assets/step/chineseOmelette_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/chineseOmelette_S1.jpeg",
    "info":
        "In a bowl, beat the eggs until well combined and season with salt. Add half the starch and beat until the egg is foamy. Peel and thinly slice onion. Slice pepper into thin strips. Mince garlic and ginger, set aside for the sauce. Slice the white and pale green parts of the scallion into thin, lengthwise strips. Thinly slice the green part of scallions into rings for garnish and set aside.",
  },
  {
    "assets": "assets/step/chineseOmelette_S2.jpeg",
    "info":
        "Heat some oil in a nonstick frying pan, then add onion and whites parts of scallion and fry for approx. 1 min. or until fragrant. Add bell pepper and fry for approx. 2 min. Remove vegetables and let cool for approx. 5 min. Once the vegetables are about room temperature, mix with beaten egg.",
  },
  {
    "assets": "assets/step/chineseOmelette_S3.jpeg",
    "info":
        "Wipe out the pan and add some vegetable oil. Heat over medium-high heat. When the oil is hot, add half the egg mixture; the edges should puff right when it hits the hot pan. Lower the heat, and cook until the top of the omelette is set. Then use the help of a spatula to flip, and fry until the other side is golden brown. Remove from the pan and repeat with more and remaining egg mixture.",
  },
  {
    "assets": "assets/step/chineseOmelette_S4.jpeg",
    "info":
        "In a small bowl, add dark rice vinegar, soy sauce, sugar, remaining starch, and water and mix thoroughly to combine. In the same pan that you fried the eggs, add remaining oil and fry the garlic and ginger until fragrant, then add the sauce and heat until the sauce is nice and thick. Drizzle over your cooked omelettes and garnish with scallions and sesame seeds. Serve with rice and enjoy!",
  },
];

final imageOmelette = [
  "assets/step/chineseOmelette_M.jpeg",
  "assets/step/chineseOmelette_S1.jpeg",
  "assets/step/chineseOmelette_S2.jpeg",
  "assets/step/chineseOmelette_S3.jpeg",
  "assets/step/chineseOmelette_S4.jpeg",
];
