import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class handbrot extends StatelessWidget {
  const handbrot({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Handbrot'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/handbrot_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'handbrot',
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
              'Ingredient List: \n\n[Step 1] :10½ g fresh yeast ¼ tbsp sugar 75 ml water (lukewarm) 5 g chives 25 g light crème fraîche salt pepper\n\n[Step 2] :100 g flour 25 g whole-wheat flour 2½ g salt flour (for dusting) vegetable oil (for greasing) \n\n [Step 3] :25 g ham 62½ g shredded Gouda cheese flour (for dusting) \n\n [Step 4] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:bowl (large)knife,cutting board,bowl (small) \n\n Step 2 :none \n\n Step 3 :oven,bench scrape,rrolling pin \n\n Step 4 :wooden spoon,knife,baking sheet,parchment paper \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageHandbrot.length,
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
    "assets": "assets/step/handbrot_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/handbrot_S1.jpeg",
    "info":
        "Mix yeast, sugar and lukewarm water in a large bowl (or directly in the bowl of a stand mixer) until dissolved. Set aside for approx. 5 min., or until some bubbles form on the surface. Meanwhile, finely chop chives. In a small bowl, add sour cream, 2/3 of the chives and season with salt and pepper",
  },
  {
    "assets": "assets/step/handbrot_S2.jpeg",
    "info":
        "Add both types of flour and salt to the yeast mixture and roughly mix everything together. Then knead until a smooth, soft dough is formed. Remove the dough from the bowl, flour the work surface and knead the dough again with your hands for approx. 5 min. Grease a bowl with a little oil, place the dough in it and cover the bowl. Leave the dough to rise in a warm place for approx. 30–60 min., or until it has doubled in volume",
  },
  {
    "assets": "assets/step/handbrot_S3.jpeg",
    "info":
        "Preheat the oven to 200°C/390°F. Once the dough is ready, remove it from the bowl and place it on a flour-dusted work surface. Divide the dough in half. Roll out each piece into a long rectangle. Add ham and cheese to the center of the rectangle, leaving an approx. 5 cm/2 in. edge. Start by folding the two short sides inwards over the filling, then carefully fold the two long sides over to seal it. Turn the filled pastry roll, so that the seam side is facing down.",
  },
  {
    "assets": "assets/step/handbrot_S4.jpeg",
    "info":
        "Use the handle of a wooden spoon to press down the dough while not cutting all the way through it, to create four lines on the bread roll. This will divide the bread into four equal pieces and make it easier to portion after baking. Make a shallow diagonal slice on each piece with a small knife. Place the bread rolls on a baking sheet lined with parchment paper. Bake in the preheated oven for approx. 15 min., or until lightly browned on top. Remove the bread from the oven and divide it into portions. Top with a dollop of sour cream and sprinkle with remaining chopped chives. Serve while still warm!",
  },
];

final imageHandbrot = [
  "assets/step/handbrot_M.jpeg",
  "assets/step/handbrot_S1.jpeg",
  "assets/step/handbrot_S2.jpeg",
  "assets/step/handbrot_S3.jpeg",
  "assets/step/handbrot_S4.jpeg",
];
