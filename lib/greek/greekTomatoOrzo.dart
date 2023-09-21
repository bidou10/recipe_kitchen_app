import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class greekTomatoOrzo extends StatelessWidget {
  const greekTomatoOrzo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greek Tomato Orzo'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/greekTomatoOrzo_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Greek Tomato Orzo',
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
              'Ingredient List: \n\n[Step 1] :½ onion 1 cloves garlic 2 tbsp olive oil ½ tsp ground allspice ¾ tsp dried oregano ¼ tsp chili flakes\n\n[Step 2] :200 g canned diced tomatoes ½ lemon ½ l vegetable broth ½ tsp sugar salt pepper\n\n [Step 3] :100 g orzo \n\n [Step 4] :75 g feta cheese salt pepper',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:pot \n\n Step 2 :none \n\n Step 3 :wooden spoon \n\n Step 4 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageGreekTomatoOrzo.length,
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
    "assets": "assets/step/greekTomatoOrzo_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/greekTomatoOrzo_S1.jpeg",
    "info":
        "Finely dice the onion and garlic. Heat olive oil in a large pot, fry garlic and onion until translucent. Then add tomato paste, fry for 1 min. Add the allspice, oregano, and chili flakes, fry briefly until fragrant.",
  },
  {
    "assets": "assets/step/greekTomatoOrzo_S2.jpeg",
    "info":
        "Add the canned tomatoes, juice of one lemon, and vegetable broth. Add salt, pepper, and sugar and let the soup simmer for approx. 10 min",
  },
  {
    "assets": "assets/step/greekTomatoOrzo_S3.jpeg",
    "info":
        "Add orzo and let simmer for approx. 10 min. more, stirring occasionally",
  },
  {
    "assets": "assets/step/greekTomatoOrzo_S4.jpeg",
    "info":
        "Season the soup again with salt and pepper to taste. Transfer to serving bowls and crumble feta cheese on top. Enjoy!",
  },
];

final imageGreekTomatoOrzo = [
  "assets/step/greekTomatoOrzo_M.jpeg",
  "assets/step/greekTomatoOrzo_S1.jpeg",
  "assets/step/greekTomatoOrzo_S2.jpeg",
  "assets/step/greekTomatoOrzo_S3.jpeg",
  "assets/step/greekTomatoOrzo_S4.jpeg",
];
