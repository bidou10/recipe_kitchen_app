import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class banhMiChicken extends StatelessWidget {
  const banhMiChicken({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banh Mi Chicken'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/banhMiChicken_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Banh Mi Chicken',
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
              'Ingredient List: \n\n[Step 1] :150 g daikon radishes 150 g carrots 150 ml rice vinegar 250 ml water 110 g sugar 1 tsp salt 1 jalapeño ½ cucumber\n\n[Step 2] :2 cloves garlic 2 tsp ginger 2 tsp fish sauce 3 tbsp soy sauce 15 g sugar 2 tbsp lime juice 1 tsp sambal oelek 3 chicken thighs (boneless)\n\n [Step 3] :4 bread rolls 4 tbsp mayonnaise 5 g cilantro ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:peeler,knife,cutting board,pot (small),glass jar \n\n Step 2 :bowl (large),grill pantongs \n\n Step 3 :none ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageBanhMiChicken.length,
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
    "assets": "assets/step/banhMiChicken_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/banhMiChicken_S1.jpeg",
    "info":
        "Peel carrots and radish and julienne. Mix water, rice vinegar, some sugar, and salt in a small pot and bring to a boil over medium-high heat. Transfer daikon radish and carrot to a large glass jar. Pour the vinegar mixture over the vegetables and seal the jar. Let stand for approx. 2 hrs. Thinly slice jalapeño. Core the cucumber and cut into thin strips",
  },
  {
    "assets": "assets/step/banhMiChicken_S2.jpeg",
    "info":
        "Peel and mince garlic and ginger and add to a large bowl. Add fish sauce, soy sauce, remaining sugar, lime juice, and sambal oelek and mix well to combine. Add the chicken and let marinate for at least 20 min. Grill chicken in a preheated grill pan, skin side-down for approx. 4 min. Flip and grill on the other side for approx. 3 min., then pour in any remaining marinade and cook until the chicken is cooked through. Remove and let rest for approx. 5 min. before slicing.",
  },
  {
    "assets": "assets/step/banhMiChicken_S3.jpeg",
    "info":
        "Clean the grill pan, then use it to toast the baguette. Spread the mayonnaise on the bottom half of the baguette and cover with chicken, pickled vegetables, cilantro leaves, sliced jalapeño and cucumber. Enjoy!",
  },
];

final imageBanhMiChicken = [
  "assets/step/banhMiChicken_M.jpeg",
  "assets/step/banhMiChicken_S1.jpeg",
  "assets/step/banhMiChicken_S2.jpeg",
  "assets/step/banhMiChicken_S3.jpeg",
];
