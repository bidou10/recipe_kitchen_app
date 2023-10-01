import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class pho extends StatelessWidget {
  const pho({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pho'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/pho_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Pho',
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
              'Ingredient List: \n\n[Step 1] :133⅓ g stewing beef ⅓ carrot ⅔ cloves garlic ⅔ tbsp ginger 1 green onions ⅔ chilis 3⅓ g cilantro 100 g beef\n\n[Step 2] :½ l beef stock ⅓ tbsp fennel seed (ground) 50 g rice noodles (broad) 16⅔ ml fish sauce\n\n [Step 3] :salt pepper ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife \n\n Step 2 :large saucepan,cooking spoon \n\n Step 3 : none',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imagePho.length,
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
    "assets": "assets/step/pho_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/pho_S1.jpeg",
    "info":
        "Cut stewing beef and carrot into cubes. Mince garlic and ginger. Finely chop green onions, chili, and cilantro. Cut beef loin into very thin slices",
  },
  {
    "assets": "assets/step/pho_S2.jpeg",
    "info":
        "Briefly sear cubed beef in batches in some vegetable oil. Deglaze with beef stock. Add fennel seed and let simmer for approx. 25 - 30 min. Add rice noodles, carrot, garlic, ginger, chili, and fish sauce and simmer for approx. 5 – 8 min. or until the noodles are tender",
  },
  {
    "assets": "assets/step/pho_S3.jpeg",
    "info":
        "Add sliced beef and green onions and simmer for approx. 3 – 5 min. until the beef is just cooked. Add cilantro, salt, and pepper to taste. Enjoy",
  },
];

final imagePho = [
  "assets/step/pho_M.jpeg",
  "assets/step/pho_S1.jpeg",
  "assets/step/pho_S2.jpeg",
  "assets/step/pho_S3.jpeg",
];
