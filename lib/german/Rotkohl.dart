import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class Rotkohl extends StatelessWidget {
  const Rotkohl({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rotkohl'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Rotkohl',
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
              'Ingredient List: \n\n[Step 1] :½ kg red cabbage ½ onion 1 apples 2½ cloves 2 juniper berries 1 allspice berries\n\n[Step 2] :1½ tbsp clarified butter 25 ml red wine vinegar 100 ml red wine 150 ml water 1½ tbsp sugar ½ bay leaf ½ cinnamon stick\n\n [Step 3] :50 g cranberry jam salt potato dumpling (for serving) ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife,empty tea bag \n\n Step 2 :large pot with lidcooking spoon\n\n Step 3 :none',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageRotkohl.length,
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
    "assets": "assets/step/rotkohl_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/rotkohl_S1.jpeg",
    "info":
        "Halve and quarter the red cabbage and then remove the stalk. Cut into very fine strips. Peel the onion and cut into fine rings. Wash the apples, quarter them, and remove the core. Cut into fine slices. Add cloves, juniper berries, and allspice to an empty tea bag or to a muslin cloth and tie a knot.",
  },
  {
    "assets": "assets/step/rotkohl_S2.jpeg",
    "info":
        "Add the clarified butter to a large pot over medium heat. Once melted, add onions and apples and sauté approx. 5 min. without letting them brown. Then add the red cabbage and sauté for approx. 5 min. Deglaze with vinegar and red wine. Add salt, sugar, water and spices and simmer, covered, for approx. 45 min.",
  },
  {
    "assets": "assets/step/rotkohl_S3.jpeg",
    "info":
        "Remove the spices and stir in the cranberry jam. Season with salt to taste. Serve with potato dumplings. Enjoy!",
  },
];

final imageRotkohl = [
  "assets/step/rotkohl_M.jpeg",
  "assets/step/rotkohl_S1.jpeg",
  "assets/step/rotkohl_S2.jpeg",
  "assets/step/rotkohl_S3.jpeg",
  "assets/step/rotkohl_S4.jpeg",
];
