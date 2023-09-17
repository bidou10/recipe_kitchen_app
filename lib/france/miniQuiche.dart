import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class miniQuiche extends StatelessWidget {
  const miniQuiche({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mini Quiche Lorraine'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/miniQuiche_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Mini Quiche Lorraine',
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
              'Ingredient List: \n\n[Step 1] :100 g all-purpose flour 62½ g butter 25 ml water ½ tsp sugar salt\n\n[Step 2] :none\n\n [step 3] :none \n\n [step 4] :40 g leek 1½ strips bacon\n\n [step 5] :vegetable oil for frying salt pepper\n\n [step 6] :50 ml heavy cream 1 eggs salt\n\n [step 7] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:oven,standing mixer \n\n Step 2 :small tart tins,baking paper,pie weights or dried beans,rolling pin \n\n Step 3 : oven\n\n Step 4 :cutting board,knife \n\n Step 5 :small frying pan,cooking spoon \n\n Step 6 :container with spout,whisk \n\n Step 7 :oven \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageMiniQuiche.length,
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
    "assets": "assets/step/miniQuiche_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/miniQuiche_S1.jpeg",
    "info":
        "Preheat oven to 180°C/355°F. Combine flour, butter, water, sugar, and salt in either a standing mixer or by hand, until a dough forms.",
  },
  {
    "assets": "assets/step/miniQuiche_S2.jpeg",
    "info":
        "Thinly roll out dough on a lightly floured work surface. Press dough into the bottom and up the sides of mini tart tins, buttered if necessary. Trim off edges. Line with baking paper and weigh down with pie weights.",
  },
  {
    "assets": "assets/step/miniQuiche_S3.jpeg",
    "info":
        "Blind bake the pastry crusts in a preheated oven at 180°C/355°F for approx. 15 min. Set aside and let cool completely.",
  },
  {
    "assets": "assets/step/miniQuiche_S4.jpeg",
    "info": "Meanwhile, slice leek and bacon into fine strips.",
  },
  {
    "assets": "assets/step/miniQuiche_S5.jpeg",
    "info":
        "Sauté leek and bacon in some vegetable oil. Lightly season with salt and pepper and then distribute among the cooled crusts.",
  },
  {
    "assets": "assets/step/miniQuiche_S6.jpeg",
    "info":
        "Whisk heavy cream and eggs with a pinch of salt and evenly pour the mixture into crusts. Use a container with a spout for easy filling.",
  },
  {
    "assets": "assets/step/miniQuiche_S7.jpeg",
    "info":
        "Bake again in a preheated oven at 200°C /390°F for approx. 20 min. until golden. Allow to cool for 5 – 10 min. before serving.",
  },
];

final imageMiniQuiche = [
  "assets/step/miniQuiche_M.jpeg",
  "assets/step/miniQuiche_S1.jpeg",
  "assets/step/miniQuiche_S2.jpeg",
  "assets/step/miniQuiche_S3.jpeg",
  "assets/step/miniQuiche_S4.jpeg",
  "assets/step/miniQuiche_S5.jpeg",
  "assets/step/miniQuiche_S6.jpeg",
  "assets/step/miniQuiche_S7.jpeg",
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
