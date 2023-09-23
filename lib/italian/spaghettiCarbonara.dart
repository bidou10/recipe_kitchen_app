import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class spaghettiCarbonara extends StatelessWidget {
  const spaghettiCarbonara({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spaghetti Carbonara'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/spaghettiCarbonara_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Spaghetti Carbonara',
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
              'Ingredient List: \n\n[Step 1] :salt 500 g spaghetti 6 egg yolks 40 g Pecorino cheese pepper\n\n[Step 2] :150 g guanciale 2 cloves garlic (optional) \n\n [Step 3] :none \n\n [Step 4] :none \n\n [Step 5] : salt pepper Pecorino cheese (for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:1 pot (large) sieve,bowl,whisk,box grater \n\n Step 2 :cutting board,knife,frying pan \n\n Step 3 :none \n\n Step 4 :none \n\n  Step 5 :Pasta Magie seasoning \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageChorizoPotato.length,
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
    "assets": "assets/step/spaghettiCarbonara_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "",
    "info":
        "In a large serving bowl, whisk together egg yolks, a few grinds of black pepper, and cheese. Bring large pot of generously salted water to a boil. Add spaghetti and cook until al dente, approx. 7 – 9 min., or according to package instructions. Reserve about 120 ml/ 1/2 cup pasta water before draining and setting aside",
  },
  {
    "assets": "",
    "info":
        "Fry diced guanciale until it's crisp and the fat has rendered. Add peeled and crushed garlic, if desired.",
  },
  {
    "assets": "",
    "info":
        "Add pasta to frying pan and toss until coated with the fat, then remove the pan from the heat.",
  },
  {
    "assets": "",
    "info":
        "Transfer pasta from the frying pan along with half of the reserved pasta water to a serving bowl with the egg mixture, mixing everything together quickly so that the eggs don’t scramble. Toss until the mixture turns creamy and thick, adding more pasta water as needed.",
  },
  {
    "assets": "",
    "info":
        "Season to taste with salt and black pepper and serve garnished with more cheese. Enjoy!",
  },
];

final imageChorizoPotato = [
  "assets/step/spaghettiCarbonara_M.jpeg",
  "",
  "",
  "",
  "",
  "",
];
