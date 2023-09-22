import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class manakish extends StatelessWidget {
  const manakish({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manakish'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset(
            //   'assets/step/manakish_M.jpeg',
            //   height: 300,
            //   width: double.infinity,
            //   fit: BoxFit.cover,
            // ),
            SizedBox(height: 16.0),
            Text(
              'Manakish',
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
              'Ingredient List: \n\n[Step 1] :½ tsp active dry yeast 75 ml water (warm) 125 g flour ½ tsp salt ½ tsp sugar 1 tbsp olive oil\n\n[Step 2] :1½ tbsp Za atar 75 g halloumi \n\n [Step 3] :lemon (for serving) ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:2 bowls,large bowl,plastic wrap \n\n Step 2 :baking sheet,parchment paper,kitchen towel,box grater \n\n Step 3 :oven ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageManakish.length,
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
    "assets": "assets/step/manakish_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/manakish_S1.jpeg",
    "info":
        "Dissolve yeast in lukewarm water. Add flour, salt, and sugar to a bowl. Make a well and add yeast mixture, followed by one third of the olive oil. Work into a dough using your hands and knead for 5 min. until elastic. The dough should spring back when poked with your finger. Form dough into a ball, place in a large bowl, oil the top, and cover with plastic wrap. Set aside somewhere warm for 1 hr",
  },
  {
    "assets": "assets/step/manakish_S2.jpeg",
    "info":
        "Once the dough has risen, roll out into a log and divide into 4 equal pieces. Place on a parchment-lined baking sheet and press out slightly into flatbreads. Cover with a clean kitchen towel and let rise again while you prepare the topping. Mix the Za’atar with remaining olive oil. Grate halloumi on the largest side of a box grater, then add to the Za’atar mixture and mix to combine",
  },
  {
    "assets": "assets/step/manakish_S3.jpeg",
    "info":
        "Preheat oven to 200°C/400°F. Stretch out the flatbreads and dimple the surfaces with your fingertips. Top each generously with the Za’atar-halloumi mixture and drizzle more olive oil, if desired. Transfer to oven and bake for approx. 8 min. Serve immediately with lemon wedges. Enjoy!",
  },
];

final imageManakish = [
  "assets/step/manakish_M.jpeg",
  "assets/step/manakish_S1.jpeg",
  "assets/step/manakish_S2.jpeg",
  "assets/step/manakish_S3.jpeg",
];
