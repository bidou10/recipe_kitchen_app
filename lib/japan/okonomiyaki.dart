import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class Okonomiyaki extends StatelessWidget {
  const Okonomiyaki({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Okonomiyaki'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/Okonomiyaki_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Okonomiyaki',
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
              'Ingredient List: \n\n[Step 1] : ½ head Napa cabbage 1 carrot 3 stalks scallions 4 tbsp ketchup 3 tbsp Worcestershire sauce \n\n [Step 2] :3 eggs 120 ml water 2 tbsp light soy sauce 1 tbsp toasted sesame oil 140 g flour \n\n [Step 3] :none \n\n [Step 4]:vegetable oil (for frying) black sesame seeds (for serving) Japanese mayonnaise (for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :cutting board,knife,bowl (small)bowl (large),peeler \n\n Step 2 :blender \n\n Step 3 : rubber spatula\n\n Step 4 :nonstick panspatula ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageOkonomiyaki.length,
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
                                    fontWeight: FontWeight.w700,
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

const product = [
  {
    "assets": "assets/step/Okonomiyaki_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/Okonomiyaki_S1.jpeg",
    "info":
        "Core and shred Napa cabbage, then transfer to a large bowl. Use a vegetable peeler to grate the carrot into the same bowl. Thinly slice scallions, adding most to the bowl with the cabbage and carrots. Add ketchup and Worcestershire to a small bowl and mix to combine, then set aside.",
  },
  {
    "assets": "assets/step/Okonomiyaki_S2.jpeg",
    "info":
        "Add eggs, water, soy sauce, and sesame oil to a blender and blend until well combined. Add flour and blend until a smooth batter forms.",
  },
  {
    "assets": "assets/step/Okonomiyaki_S3.jpeg",
    "info":
        "Add batter to the bowl with the cabbage and stir to combine until everything is coated evenly.",
  },
  {
    "assets": "assets/step/Okonomiyaki_S4.jpeg",
    "info":
        "Heat a nonstick pan over medium-high heat. Add oil and let heat up. Transfer half the batter to the pan. Flip when the bottom is golden and fry until both sides are golden brown, approx. 3 min. per side. Serve warm pancakes drizzled with okonomiyaki sauce, black sesame seeds, Japanese mayonnaise, and a sprinkle of scallions. Enjoy!",
  },
];

final imageOkonomiyaki = [
  "assets/step/Okonomiyaki_M.jpeg",
  "assets/step/Okonomiyaki_S1.jpeg",
  "assets/step/Okonomiyaki_S2.jpeg",
  "assets/step/Okonomiyaki_S3.jpeg",
  "assets/step/Okonomiyaki_S4.jpeg"
];

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
