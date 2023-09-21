import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class greekHoneydew extends StatelessWidget {
  const greekHoneydew({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greek Honeydew'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/greekHoneydew_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Greek Honeydew',
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
              'Ingredient List: \n\n[Step 1] :1 honeydew melon 1 red onion 8 cherry tomatoes 1 cucumber 1 red bell pepper 200 g feta cheese salt\n\n[Step 2] :4 tbsp red wine vinegar 4 tbsp olive oil 2 tsp ouzo 10 g oregano salt pepper\n\n [Step 3] :100 g jarred pitted black olives 1 tbsp caper 10 g mint (for garnish) ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:knife,cutting board,bowl (large) \n\n Step 2 :bowl (small) \n\n Step 3 :none ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageGreekHoneydew.length,
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
    "assets": "assets/step/greekHoneydew_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/greekHoneydew_S1.jpeg",
    "info":
        "Remove peel and seeds of the honeydew melon, then slice into pieces. Slice red onion and quarter the tomatoes. Halve cucumber two times lengthwise, then cut into bite-sized pieces. Remove seeds from bell pepper, then dice. Add all ingredients to a bowl and season with salt. Slice feta cheese into cubes and set aside until serving",
  },
  {
    "assets": "assets/step/greekHoneydew_S2.jpeg",
    "info":
        "To make the dressing, combine vinegar, oil, and ouzo in a bowl. Season with salt and pepper and mix well. Pluck oregano leaves",
  },
  {
    "assets": "assets/step/greekHoneydew_S3.jpeg",
    "info":
        "Add olives and capers to the bowl with vegetables. Add dressing, mix well, and let sit at least 15 min. before serving. To serve, top the salad with feta cheese, plucked oregano, and mint. Toss well before eating. Enjoy!",
  },
];

final imageGreekHoneydew = [
  "assets/step/greekHoneydew_M.jpeg",
  "assets/step/greekHoneydew_S1.jpeg",
  "assets/step/greekHoneydew_S2.jpeg",
  "assets/step/greekHoneydew_S3.jpeg",
];
