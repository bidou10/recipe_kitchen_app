import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class greekSalad extends StatelessWidget {
  const greekSalad({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greek Salad'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/greekSalad_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Greek Salad',
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
              'Ingredient List: \n\n[Step 1] :½ red onion 1½ tbsp red wine vinegar 225 g tomatoes ½ cucumber ½ green bell pepper ½ clove garlic\n\n[Step 2] :¼ tsp dried oregano 2 tbsp extra-virgin olive oil salt pepper\n\n [Step 3] :100 g feta cheese 7½ jarred pitted Kalamata olives ½ tbsp caper pepper ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:knife,cutting board,bowl,fine grater \n\n Step 2 :sieve,bowl (small)whisk \n\n Step 3 :platter \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageGreekSalad.length,
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
    "assets": "assets/step/greekSalad_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/greekSalad_S1.jpeg",
    "info":
        "Halve and thinly slice red onion. Add to a bowl with red wine vinegar, toss and let it sit while you prepare other ingredients. Halve tomatoes and cut into wedges. Halve cucumber lengthwise, remove the seeds with a spoon, and cut into thick half-moon slices. Remove the core and slice bell pepper into strips. Grate garlic.",
  },
  {
    "assets": "assets/step/greekSalad_S2.jpeg",
    "info":
        "Drain red onion while reserving the vinegar in a small bowl and set the red onions aside. Whisk together the vinegar, dried oregano and grated garlic. Slowly whisk in olive oil until the vinaigrette has emulsified. Season with salt and pepper",
  },
  {
    "assets": "assets/step/greekSalad_S3.jpeg",
    "info":
        "Slice the feta cheese into large, thick slabs. On a serving plate, combine tomatoes, cucumbers and pickled red onions. Scatter Kalamata olives and capers on top. Drizzle with the dressing. Arrange feta slices on top. Optionally, scatter more dried oregano, and freshly ground pepper if desired",
  },
];

final imageGreekSalad = [
  "assets/step/greekSalad_M.jpeg",
  "assets/step/greekSalad_S1.jpeg",
  "assets/step/greekSalad_S2.jpeg",
  "assets/step/greekSalad_S3.jpeg",
];
