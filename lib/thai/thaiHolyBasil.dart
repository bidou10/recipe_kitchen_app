import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class ThaiHolyBasil extends StatelessWidget {
  const ThaiHolyBasil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thai Holy Basil'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/thai_Holy_Basil_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Thai holy basil and pork stir fry',
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
              'Ingredient List: \n\n[Step 1]1 shallot ,4 cloves garlic ,3 Thai chilis ,15 g holy basil ,1 tbsp light soy sauce ,1 tbsp fish sauce ,½ tbsp oyster sauce ,½ tbsp dark soy sauce ,1 tsp sugar ,\n\n [Step 2] :2 eggs ,oil (for frying) \n\n [Step 3] : jasmine rice (for serving) ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :cutting board, knife, food processor ,bowl (small) \n\n Step 2 : frying pan, spatula \n\n Step 3 : cooking spoon',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageHolyBasil.length,
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
    "assets": "assets/step/thai_Holy_Basil_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/thai_Holy_Basil_S1.jpeg",
    "info":
        "Roughly chop shallot, chili, and garlic then add to a food processor and pulse until finely chopped. Pluck the basil leaves. Mix light soy sauce, fish sauce, oyster sauce, dark soy sauce, and sugar together in a small bowl.",
  },
  {
    "assets": "assets/step/thai_Holy_Basil_S2.jpeg",
    "info":
        "In a frying pan, heat oil over medium-high heat. Crack in the eggs and fry until the edge is crispy and the whites are set. Remove and set aside.",
  },
  {
    "assets": "assets/step/thai_Holy_Basil_S3.jpeg",
    "info":
        "In the same pan, heat more oil over medium heat. Add the shallot-chili paste and fry for approx. 2–3 min., or until fragrant. Add minced pork, breaking it up with a spatula into small pieces as it browns. Fry for approx. 3 min., until well browned. Add the sauce mixture and stir to combine. Add basil and briefly stir-fry until the leaves are wilted. Remove from the pan and serve with cooked rice and a fried egg (one per serving).",
  },
];

final imageHolyBasil = [
  "assets/step/thai_Holy_M.jpeg",
  "assets/step/thai_Holy_S1.jpeg",
  "assets/step/thai_Holy_S2.jpeg",
  "assets/step/thai_Holy_S3.jpeg",
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
