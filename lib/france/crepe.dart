import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class crepe extends StatelessWidget {
  const crepe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crepe'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/CrepeSuzette_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Crepe',
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
              'Ingredient List: \n\n[Step 1] :15 g butter 1 eggs 3½ g vanilla sugar 1 cl Grand Marnier 125 ml milk 60 g all-purpose flour salt\n\n[Step 2] :1 oranges\n\n [Step 3] :15 g sugar 75 ml orange juice \n\n [Step 4]: 25 g butter\n\n [Step 5]:  butter for frying\n\n [Step 6] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1: strainer,large bowl,whisk,small sauce pan \n\n Step 2 :zester,strainer,knife,small bowl \n\n Step 3 :small frying pan,cooking spoon \n\n Step 4 :none \n\n Step 5 :large frying pan,ladle \n\n Step 6 :none ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageCrepes.length,
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
    "assets": "assets/step/CrepeSuzette_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/CrepeSuzette_S1.jpeg",
    "info":
        "Melt butter and allow to cool slightly. Then, beat together with the eggs, vanilla sugar, Grand Marnier, and milk. Strain the flour and a pinch of salt into the mixture and stir in. Allow the mixture to chill for approx. 30 – 35 min.",
  },
  {
    "assets": "assets/step/CrepeSuzette_S2.jpeg",
    "info": "Meanwhile, zest one orange and fillet both.",
  },
  {
    "assets": "assets/step/CrepeSuzette_S3.jpeg",
    "info":
        "Caramelize sugar in a pan. Deglaze with orange juice and bring to a boil for approx. 5 - 10 min. until the juice has thickened.",
  },
  {
    "assets": "assets/step/CrepeSuzette_S4.jpeg",
    "info": "Next, stir in remaining butter until a velvety sauce is formed.",
  },
  {
    "assets": "assets/step/CrepeSuzette_S5.jpeg",
    "info":
        "Now, fry the Crêpes as thinly as possible in a hot pan with some butter for approx. 1 – 2 min. per side until golden.",
  },
  {
    "assets": "assets/step/CrepeSuzette_S6.jpeg",
    "info":
        "Warm the cooked Crêpe in the orange sauce. Add the orange segments and orange zest. Fold if desired and serve warm.",
  },
];

final imageCrepes = [
  "assets/step/CrepeSuzette_M.jpeg",
  "assets/step/CrepeSuzette_S1.jpeg",
  "assets/step/CrepeSuzette_S2.jpeg",
  "assets/step/CrepeSuzette_S3.jpeg",
  "assets/step/CrepeSuzette_S4.jpeg",
  "assets/step/CrepeSuzette_S5.jpeg",
  "assets/step/CrepeSuzette_S6.jpeg",
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
