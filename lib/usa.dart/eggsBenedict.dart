import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class EggsBenedict extends StatelessWidget {
  const EggsBenedict({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eggs Benedict'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/EggsBenedict_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Eggs Benedict',
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
              'Ingredient List: \n\n[Step 1] :62½ ml white wine 12½ ml white wine vinegar ½ sprig tarragon 1 peppercorns 1 mustard seeds\n\n[Step 2] :2 egg yolks\n\n [Step 3] :125 g butter salt \n\n [Step 4] :1 tbsp white wine vinegar 4 eggs \n\n [Step 5] :4 slices cooked ham \n\n [Step 6] :2 English muffins ,salt',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cooking spoon,small sauce pan \n\n Step 2 :sieve,heat resistant bowl,whisk \n\n Step 3 :none \n\n Step 4 :skimmer,large sauce pan,paper towel \n\n Step 5 :small frying pan,cooking spoon \n\n Step 6 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageEggsBenedict.length,
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
    "assets": "assets/step/EggsBenedict_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/EggsBenedict_S1.jpeg",
    "info":
        "For the hollandaise, boil down white wine, some of the white wine vinegar, fresh tarragon, peppercorns, and mustard seeds in a small saucepan until half the liquid has evaporated.",
  },
  {
    "assets": "assets/step/EggsBenedict_S2.jpeg",
    "info":
        "Pass liquid through a sieve and whisk with the egg yolks in a heat-resistant bowl over a bain-marie until the mixture has slightly thickened.",
  },
  {
    "assets": "assets/step/EggsBenedict_S3.jpeg",
    "info":
        "Now, gradually fold in warm, melted butter into the foamy mass, while beating constantly. Season with salt to taste and set aside.",
  },
  {
    "assets": "assets/step/EggsBenedict_S4.jpeg",
    "info":
        "Heat up some water in a large sauce pan until it simmers. Add rest of white wine vinegar and poach eggs in the water for approx. 2 – 3 min. Drain on a plate lined with paper towels.",
  },
  {
    "assets": "assets/step/EggsBenedict_S5.jpeg",
    "info":
        "In the meantime, fry ham in frying pan on both sides for approx. 1 – 2 min. until crispy.",
  },
  {
    "assets": "assets/step/EggsBenedict_S6.jpeg",
    "info":
        "Halve English muffins, top each with a slice of ham and a poached egg. Sprinkle with some salt and warm hollandaise sauce.",
  },
];

final imageEggsBenedict = [
  "assets/step/EggsBenedict_M.jpeg",
  "assets/step/EggsBenedict_S1.jpeg",
  "assets/step/EggsBenedict_S2.jpeg",
  "assets/step/EggsBenedict_S3.jpeg",
  "assets/step/EggsBenedict_S4.jpeg",
  "assets/step/EggsBenedict_S5.jpeg",
  "assets/step/EggsBenedict_S6.jpeg",
];
