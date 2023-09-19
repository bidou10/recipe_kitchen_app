import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class friedRice extends StatelessWidget {
  const friedRice({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chinese Fried Rice'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/friedRice_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chinese Fried Rice',
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
              'Ingredient List: \n\n[Step 1] :2 green onions ½ carrot 2 eggs\n\n[Step 2] :vegetable oil for frying\n\n [Step 3] :200 g rice (cooked) 30 ml Chinese cooking wine salt pepper \n\n [Step 4] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:whisk,cutting board,knife,small bowl \n\n Step 2 :wok or large frying pan \n\n Step 3 :none \n\n Step 4 :small bowl \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageFriedRice.length,
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
    "assets": "assets/step/friedRice_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/friedRice_S1.jpeg",
    "info":
        "Slice green onions and dice the carrot. Beat the eggs, then add most of the chopped green onion and stir to combine. Reserve remaining green onion for garnish.",
  },
  {
    "assets": "assets/step/friedRice_S2.jpeg",
    "info":
        "Add a little oil to the wok and scramble the eggs over medium heat.",
  },
  {
    "assets": "assets/step/friedRice_S3.jpeg",
    "info":
        "Add the cooked rice and diced carrot, season with salt, pepper, and wine, stir fry on highest heat.",
  },
  {
    "assets": "assets/step/friedRice_S4.jpeg",
    "info": "Garnish with some more sliced green onion. Enjoy!",
  },
];

final imageFriedRice = [
  "assets/step/friedRice_M.jpeg",
  "assets/step/friedRice_S1.jpeg",
  "assets/step/friedRice_S2.jpeg",
  "assets/step/friedRice_S3.jpeg",
  "assets/step/friedRice_S4.jpeg",
];
