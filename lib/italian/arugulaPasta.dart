import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class arugulaPasta extends StatelessWidget {
  const arugulaPasta({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arugula pasta'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/arugulaPasta_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              '',
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
              'Ingredient List: \n\n[Step 1] :25 g sunflower seeds\n\n[Step 2] :30 g Parmesan cheese (for serving) lemon 120 g sun-dried tomatoes 1 clove garlic 20 g olive oil salt pepper\n\n [Step 3] :200 g pasta 100 g arugula (for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:frying pan \n\n Step 2 :grater,fine grater,citrus press,liquid measuring cup,immersion blender \n\n Step 3 :pot , sieve',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageArugulaPasta.length,
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
    "assets": "assets/step/arugulaPasta_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/_arugulaPastaS1.jpeg",
    "info": "Toast the sunflower seeds in a pan over medium-low heat",
  },
  {
    "assets": "assets/step/arugulaPasta_S2.jpeg",
    "info":
        "Grate Parmesan. Zest the lemon, then juice it. Add sun-dried tomatoes, sunflower seeds, garlic, and the lemon juice and zest to a liquid measuring cup and blend until roughly broken up using an immersion blender. Add olive oil, season with salt and pepper and blend together until a paste forms",
  },
  {
    "assets": "assets/step/arugulaPasta_S3.jpeg",
    "info":
        "Cook pasta in salted water according to packet instructions until al dente. Spoon some of the pasta cooking water into sun-dried tomato mixture until a smooth pesto forms. Drain the pasta, return it to in the pot, add the sun-dried tomato pesto, and toss together until well-coated. Top served pasta with arugula and freshly grated Parmesan cheese. Enjoy!",
  },
];

final imageArugulaPasta = [
  "assets/step/arugulaPasta_M.jpeg",
  "assets/step/arugulaPasta_S1.jpeg",
  "assets/step/arugulaPasta_S2.jpeg",
  "assets/step/arugulaPasta_S3.jpeg",
];
