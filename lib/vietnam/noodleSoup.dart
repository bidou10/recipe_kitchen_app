import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class noodleSoup extends StatelessWidget {
  const noodleSoup({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noodle Soup'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/noodleSoup_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Noodle Soup',
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
              'Ingredient List: \n\n[Step 1] :50 g carrot 1 green onion 100 g tofu 1 clove garlic 5 g ginger 1 tbsp miso paste 1 tsp tahini 1 tbsp red curry paste 2 tsp soy sauce 1 tsp sesame oil oil for frying\n\n[Step 2] :100 g rice noodles 10 g baby spinach 10 g bean sprouts 5 g mint 1 tsp sesame seeds (white) 1 tsp sesame seeds (black)\n\n [Step 3] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:frying pan,mason jar,vegetable peeler,cutting board,knife,grater \n\n Step 2 :none \n\n Step 3 :none',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageNoodleSoup.length,
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
    "assets": "assets/step/noodleSoup_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/noodleSoup_S1.jpeg",
    "info":
        "Peel and grate carrots. Finely dice green onion. Dice tofu. Heat oil in a frying pan and fry diced tofu for approx. 5 min. Set aside. For the spice paste, peel and finely chop garlic and ginger. Add miso paste, tahini, red curry paste, soy sauce, sesame oil, and chopped garlic and ginger to a mason jar and stir to combine,",
  },
  {
    "assets": "assets/step/noodleSoup_S2.jpeg",
    "info":
        "Layer all ingredients for the soup on top of one another. Start with precooked rice noodles, then add fried diced tofu, baby spinach, grated carrot, green onion, bean sprouts, and mint, and top with white and black sesame. Seal carefully.",
  },
  {
    "assets": "assets/step/noodleSoup_S3.jpeg",
    "info":
        "Before serving, fill up the mason jar with hot water and let rest for approx. 5 min. Then stir carefully before eating to mix sauce, noodles and vegetables. Enjoy",
  },
];

final imageNoodleSoup = [
  "assets/step/noodleSoup_M.jpeg",
  "assets/step/noodleSoup_S1.jpeg",
  "assets/step/noodleSoup_S2.jpeg",
  "assets/step/noodleSoup_S3.jpeg",
];
