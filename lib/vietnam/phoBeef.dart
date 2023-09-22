import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class phoBeef extends StatelessWidget {
  const phoBeef({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pho Beef'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/phoBeef_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Pho Beef',
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
              'Ingredient List: \n\n[Step 1] :500 g oxtail 500 g beef bones 500 g boiling beef 5 l water\n\n[Step 2] :5 shallots 40 g ginger\n\n [Step 3] :1 cardamom pod 1 tsp fennel seed 1 cinnamon stick 1 star anise 3 tbsp fish sauce 1 tsp salt 1 tsp sugar \n\n [Step 4] :250 g rice noodles 5 scallions 2 chilis 200 g beef tenderloin \n\n [Step 5] :20 g soy sprouts 4 sprigs mint 4 sprigs cilantro chili (for serving) fish sauce (for serving) lime (for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife,pot (large) slotted spoon \n\n Step 2 :frying pan,bowl \n\n Step 3 : frying pan \n\n Step 4 :pot,sieve,cutting board,knife\n\n Step 5 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imagePhoBeef.length,
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
    "assets": "assets/step/phoBeef_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/phoBeef_S1.jpeg",
    "info":
        "Cut oxtail into small chunks and add to a large pot with beef bone and boiling meat. Fill up with water and bring to a boil. Let simmer over medium heat and skim foam from time to time.",
  },
  {
    "assets": "assets/step/phoBeef_S2.jpeg",
    "info":
        "Peel shallots and add to a frying pan with ginger. Fry until they start to turn very dark brown, then add to the pot. Let the broth simmer over medium-low heat for approx. 2 hrs. Discard beef bone, oxtail, ginger and shallots. Remove boiled beef and transfer to a bowl with cold water.",
  },
  {
    "assets": "assets/step/phoBeef_S3.jpeg",
    "info":
        "Add cardamom pod, fennel seeds, cinnamon stick an star anise to a frying pan and fry until fragrant. Add to the pot. Season the broth with fish sauce, salt, and sugar. Let simmer for approx. 30 min",
  },
  {
    "assets": "assets/step/phoBeef_S4.jpeg",
    "info":
        "Cook rice noodles according to package instructions, then drain. Finely slice scallions and chilis. Slice boiled beef and raw beef tenderloin",
  },
  {
    "assets": "assets/step/phoBeef_S5.jpeg",
    "info":
        "Remove cardamom pod, fennel seeds, cinnamon stick an star anise and bring broth back to a simmer. Add cooked rice noodles, raw, and cooked beef to a serving bowl and ladle hot broth into the bowl. Top with soy sprouts, scallions, mint, cilantro, and chilis. Serve with more chilis, fish sauce and lime juice for everybody to season to taste. Enjoy!",
  },
];

final imagePhoBeef = [
  "assets/step/phoBeef_M.jpeg",
  "assets/step/phoBeef_S1.jpeg",
  "assets/step/phoBeef_S2.jpeg",
  "assets/step/phoBeef_S3.jpeg",
  "assets/step/phoBeef_S4.jpeg",
  "assets/step/phoBeef_S5.jpeg",
];
