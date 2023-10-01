import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class Serrano extends StatelessWidget {
  const Serrano({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Serrano Chicken'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/SerranoChicken_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Stuffed Serrano wrapped Chicken',
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
              'Ingredient List: \n\n[Step 1] :25 g mushrooms 50 g sun-dried tomatoes\n\n[Step 2] :2 chicken breasts\n\n [Step 3] :20 g basil 20 g parsley 1 sprigs rosemary 1 sprigs thyme 1 clove garlic 80 ml olive oil salt pepper \n\n [Step 4] :4 slices Serrano ham \n\n [Step 5] : none ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1: cutting board, knife \n\n Step 2 :none \n\n Step 3 :food processor or mincer \n\n Step 4 : brush \n\n Step 5 : grill ,barbecue tongs \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageSerrano.length,
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
    "assets": "assets/step/SerranoChicken_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/SerranoChicken_S1.jpeg",
    "info":
        "Preheat the grill. Finely slice mushrooms. Drain sun-dried tomatoes and cut into strips.",
  },
  {
    "assets": "assets/step/SerranoChicken_S2.jpeg",
    "info":
        "With your fingers, carefully loosen the skin of the chicken breast and place some of the sliced mushrooms and sun-dried tomatoes underneath it.",
  },
  {
    "assets": "assets/step/SerranoChicken_S3.jpeg",
    "info":
        "For the pesto, pick basil, parsley, rosemary, and thyme leaves. Peel and crush garlic clove. Puree everything in a food processor with olive oil, salt and pepper.",
  },
  {
    "assets": "assets/step/SerranoChicken_S4.jpeg",
    "info":
        "Cover stuffed chicken breasts with pesto on both sides. Tightly wrap two slices of Serrano ham around each chicken breast.",
  },
  {
    "assets": "assets/step/SerranoChicken_S5.jpeg",
    "info":
        "Grill chicken for approx. 3 – 4 min. turning occasionally until the ham is crispy. Move the chicken onto indirect heat and finish cooking for approx. 8 – 10 min. Season again with salt and pepper and serve with a grilled corncob.",
  },
];

final imageSerrano = [
  "assets/step/SerranoChicken_M.jpeg",
  "assets/step/SerranoChicken_S1.jpeg",
  "assets/step/SerranoChicken_S2.jpeg",
  "assets/step/SerranoChicken_S3.jpeg",
  "assets/step/SerranoChicken_S4.jpeg",
  "assets/step/SerranoChicken_S5.jpeg",
];
