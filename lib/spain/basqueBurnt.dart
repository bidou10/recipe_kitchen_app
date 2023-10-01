import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class basqueBurnt extends StatelessWidget {
  const basqueBurnt({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basque Burnt Cheesecake'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/basqueBurnt_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Basque Burnt Cheesecake',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Recipe cake for eight persons',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Ingredient List: \n\n[Step 1] :unsalted butter\n\n[Step 2] :900 g cream cheese 300 g sugar\n\n [Step 3] :6 eggs 470 g heavy cream 1 tsp vanilla extract ½ tsp salt \n\n [Step 4] :50 g flour',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:oven,springform pan (9 in.), 2 parchment paper \n\n Step 2 :stand mixer with paddle \n\n Step 3 : rubber spatula \n\n Step 4 :sieve \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageBasqueBurnt.length,
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
    "assets": "assets/step/basqueBurnt_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/basqueBurnt_S1.jpeg",
    "info":
        "Preheat the oven to 200°C/390°F. Grease a springform pan with butter, then line with 2 sheets of parchment paper, leaving enough to fold and hang over on the pan’s rim",
  },
  {
    "assets": "assets/step/basqueBurnt_S2.jpeg",
    "info":
        "Whip cream cheese and sugar together in a stand mixer with a paddle attachment for approx. 2 min., or until sugar has completely dissolved.",
  },
  {
    "assets": "assets/step/basqueBurnt_S3.jpeg",
    "info":
        "Add eggs, one at a time, to the stand mixer, mixing in between. Brush the sides down with a rubber spatula, then add cream, vanilla extract, and salt, and stir to combine.",
  },
  {
    "assets": "assets/step/basqueBurnt_S4.jpeg",
    "info":
        "Sift flour into the cream cheese mixture, then gently fold the ingredients together just until combined. Pour the batter into the lined springform pan and bake at 200°C/390°F for approx. 60 min. Let cool completely to room temperature before serving. Enjoy!",
  },
];

final imageBasqueBurnt = [
  "assets/step/basqueBurnt_M.jpeg",
  "assets/step/basqueBurnt_S1.jpeg",
  "assets/step/basqueBurnt_S2.jpeg",
  "assets/step/basqueBurnt_S3.jpeg",
  "assets/step/basqueBurnt_S4.jpeg",
];
