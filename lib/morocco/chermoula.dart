import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class chermoula extends StatelessWidget {
  const chermoula({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chermoula'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/chermoula_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'chermoula',
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
              'Ingredient List: \n\n[Step 1] :8 tbsp olive oil 2 cloves garlic 30 g cilantro 4 tbsp lemon juice 4 tsp hot paprika powder 2 tsp ground cumin ½ tsp cayenne pepper 2 chicken legs salt pepper\n\n[Step 2] :1 tbsp vegetable oil\n\n [Step 3] :250 g frisée lettuce \n\n [Step 4] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:oven,cutting board,knife,food processor \n\n Step 2 : cast iron pan, tongs \n\n Step 3 :none \n\n Step 4 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageChermoula.length,
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
    "assets": "assets/step/chermoula_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/chermoula_S1.jpeg",
    "info":
        "Preheat oven to 245°C/475°F. Separate the chicken drumsticks from the thighs. Add olive oil, garlic, cilantro, lemon juice, paprika, ground cumin, salt, and cayenne pepper to a food processor and pulse until smooth. Season with salt and pepper to taste and set aside",
  },
  {
    "assets": "assets/step/chermoula_S2.jpeg",
    "info":
        "Season chicken legs all over with salt and pepper. Add vegetable oil to a cast iron pan and heat over high heat until very hot. Add chicken pieces to skillet and let cook for approx. 3 min. Reduce heat to medium-high and continue cooking until skin is golden brown, approx. 12 min. Transfer pan to oven and let cook approx. 10 min. more, flipping halfway through",
  },
  {
    "assets": "assets/step/chermoula_S3.jpeg",
    "info":
        "Remove chicken from pan and set aside. Add frisée to the pan over low heat with the chicken fat, toss, and let sit for approx. 5 min., or until lightly wilted",
  },
  {
    "assets": "assets/step/chermoula_S4.jpeg",
    "info":
        "Plate frisée, top with chicken, and serve with plenty of chermoula. Enjoy!",
  },
];

final imageChermoula = [
  "assets/step/chermoula_M.jpeg",
  "assets/step/chermoula_S1.jpeg",
  "assets/step/chermoula_S2.jpeg",
  "assets/step/_chermoulaS3.jpeg",
  "assets/step/chermoula_S4.jpeg",
];
