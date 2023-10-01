import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class eggPlant extends StatelessWidget {
  const eggPlant({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Egg Plant'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/eggPlant_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Egg Plant',
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
              'Ingredient List: \n\n[Step 1] :400 g eggplant ,1 green onion\n\n[Step 2] :\n\n [Step 3] : 100 g rice \n\n [Step 4] :6 g ginger 2 cloves garlic 1 tsp fermented bean paste 1 tsp Sriracha 1 tbsp light soy sauce 4 tsp dark soy sauce 75 g sugar beet syrup 2 tsp rice wine 2 tbsp sesame oil 2 tbsp black rice vinegar\n\n [Step 5] :1 tbsp potato starch 2 tbsp water\n\n [Step 6] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife \n\n Step 2 : colander or sieve,pot \n\n Step 3 : pot ,\n\n Step 4 :pot , rubber spatula \n\n Step 5 : bowl \n\n Step 6 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageEggPlant.length,
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
    "assets": "assets/step/eggPlant_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/eggPlant_S1.jpeg",
    "info":
        "Cut eggplant into thin strips. Thinly slice green onion and set aside.",
  },
  {
    "assets": "assets/step/eggPlant_S2.jpeg",
    "info":
        "Bring a pot of water to a boil. Put the colander or sieve over or in the pot and make sure it does not touch the water. Place the eggplant into the colander or sieve, cover, and steam for approx. 15 min.",
  },
  {
    "assets": "assets/step/eggPlant_S3.jpeg",
    "info":
        "Meanwhile, wash rice with cold water and cook according to package instructions for approx. 15 min. Remove any excess water and set aside.",
  },
  {
    "assets": "assets/step/eggPlant_S4.jpeg",
    "info":
        "Peel ginger and garlic. Crush with a knife and chop finely. In a pot, mix together with fermented bean paste, Sriracha, light and dark soy sauces, sugar, rice wine, sesame oil, and black rice vinegar. Stir until fully combined.",
  },
  {
    "assets": "assets/step/eggPlant_S5.jpeg",
    "info":
        "When the eggplant is cooked, bring the sauce to a simmer. Mix potato starch and water in a bowl. Pour the starch slowly into the sauce and stir to thicken.",
  },
  {
    "assets": "assets/step/eggPlant_S6.jpeg",
    "info":
        "Transfer the steamed eggplant to the pot and toss to cover with sauce. Sprinkle green onion over and serve with rice. Enjoy!",
  },
];

final imageEggPlant = [
  "assets/step/eggPlant_M.jpeg",
  "assets/step/eggPlant_S1.jpeg",
  "assets/step/eggPlant_S2.jpeg",
  "assets/step/eggPlant_S3.jpeg",
  "assets/step/eggPlant_S4.jpeg",
  "assets/step/eggPlant_S5.jpeg",
  "assets/step/eggPlant_S6.jpeg",
];
