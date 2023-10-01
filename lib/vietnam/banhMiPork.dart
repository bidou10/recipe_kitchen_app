import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class banhMiPork extends StatelessWidget {
  const banhMiPork({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banh Mi Pork'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/banhMiPork_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Banh Mi Pork',
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
              'Ingredient List: \n\n[Step 1] :200 g pork belly 2 tbsp soy sauce 125 ml Thai red curry sauce\n\n[Step 2] :1 carrots ½ daikon radish ¼ cucumber 25 ml rice vinegar ½ tbsp sesame oil ½ tsp sugar ½ chili salt\n\n [Step 3] :vegetable oil for frying \n\n [Step 4] :baguettes Thai red curry sauce for serving cilantro for serving',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:bowl , cutting board,knife \n\n Step 2 :none \n\n Step 3 :frying pan, tweezers \n\n Step 4 :cutting board, knife \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageBanhMiPork.length,
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
    "assets": "assets/step/banhMiPork_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/banhMiPork_S1.jpeg",
    "info":
        "Slice pork belly. In a bowl, combine soy sauce and Thai red curry sauce, then add sliced pork belly. Allow to marinate in the fridge for approx. 1 hr",
  },
  {
    "assets": "assets/step/banhMiPork_S2.jpeg",
    "info":
        "Meanwhile, peel carrots and daikon radish. Julienne the carrots and daikon, together with the cucumber. Transfer to another bowl and combine with rice vinegar, sesame oil, and sugar. Season to taste with salt. Cut ends off the chili and finely slice. Set everything aside until serving",
  },
  {
    "assets": "assets/step/banhMiPork_S3.jpeg",
    "info":
        "In a frying pan, heat some vegetable oil over medium-high heat. Add marinated slice pork belly and sear for approx. 2 – 3 min. on each side",
  },
  {
    "assets": "assets/step/banhMiPork_S4.jpeg",
    "info":
        "Cut off ends of baguettes and halve crosswise, then cut each piece lengthwise and spread Thai red curry sauce on both halves. Layer with sliced pork belly, quick pickled vegetables, chili slices, and cilantro. Enjoy!",
  },
];

final imageBanhMiPork = [
  "assets/step/banhMiPork_M.jpeg",
  "assets/step/banhMiPork_S1.jpeg",
  "assets/step/banhMiPork_S2.jpeg",
  "assets/step/banhMiPork_S3.jpeg",
  "assets/step/banhMiPork_S4.jpeg",
];
