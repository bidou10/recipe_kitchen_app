import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class frenchTuna extends StatelessWidget {
  const frenchTuna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('French Tuna'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/FrenchTuna_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'French Tuna',
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
              'Ingredient List: \n\n[Step 1] :1 eggs ¼ clove garlic 1 anchovies 25 g jarred pitted Kalamata olives 1 tomatoes ½ red onion 185 g canned tuna 1 tbsp capers 1 tbsp sherry vinegar\n\n[Step 2] :½ baguette 2 tbsp olive oil sherry vinegar salt pepper\n\n [step 3] :5 g basil olive oil salt pepper \n\n [Step 4] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:pot,cutting board,knife,bowl (small),bowl \n\n Step 2 :serrated knife \n\n Step 3 :none \n\n Step 4 :plastic wrap,cutting board',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageFrenchTuna.length,
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
    "assets": "assets/step/FrenchTuna_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/FrenchTuna_S1.jpeg",
    "info":
        "Cook eggs in boiling water for 8 min., or until hard-boiled. Run under cold water, peel, and cut into slices. Thinly slice garlic and finely chop anchovy fillets. Roughly crush the olives by hand and thinly slice tomatoes and onions. Transfer onion slices to a bowl and cover with cold water. Let sit for approx. 10 min., this helps remove some of the sharp, rawness from the onions. In another bowl, combine the tuna, garlic, anchovies, capers, olives, and sherry vinegar. Gently mix to combine, trying not to smash the tuna.",
  },
  {
    "assets": "assets/step/FrenchTuna_S2.jpeg",
    "info":
        "Slice the baguette lengthwise and remove some of the soft crumb from the top and bottom of the bread to make room for the fillings. Drizzle with olive oil and sprinkle with vinegar, salt and pepper.",
  },
  {
    "assets": "assets/step/FrenchTuna_S3.jpeg",
    "info":
        "Evenly spread tuna mixture on the bottom of the baguette. Top with red onions, egg slices, tomatoes, and basil leaves. Drizzle with more olive oil and season with salt and pepper.",
  },
  {
    "assets": "assets/step/FrenchTuna_S4.jpeg",
    "info":
        "Fold shut and wrap tightly in plastic wrap. Weigh down with a cutting board for about 20 mins. Cut into portions immediately or keep refrigerated for up to 2 hrs. before serving. Enjoy!",
  }
];

final imageFrenchTuna = [
  "assets/step/FrenchTuna_M.jpeg",
  "assets/step/FrenchTuna_S1.jpeg",
  "assets/step/FrenchTuna_S2.jpeg",
  "assets/step/FrenchTuna_S3.jpeg",
  "assets/step/FrenchTuna_S4.jpeg"
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
