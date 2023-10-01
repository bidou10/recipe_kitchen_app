import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class Burger extends StatelessWidget {
  const Burger({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burger'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/americanBurger_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Burger',
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
              'Ingredient List: \n\n[Step 1] :2 onions olive oil for frying salt pepper\n\n[Step 2] :800 g ground beef pepper\n\n [Step 3] :4 slices cheddar cheese \n\n [Step 4] :cutting board,knife \n\n [Step 5] :4 leaves iceberg lettuce 4 tsp mayonnaise 4 tsp ketchup',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:grill,small frying pan,cooking spoon,cutting board,knife \n\n Step 2 :large bowl \n\n Step 3 :grill,barbecue tongs \n\n Step 4 :1 tomato ½ cucumber butter for serving 4 burger buns \n\n Step 5 : none\n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageBurger.length,
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
    "assets": "assets/step/americanBurger_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/americanBurger_S1.jpeg",
    "info":
        "Preheat the grill. Slice onion into thin rings. Gently sauté half of the onions in some olive oil. Season with salt and pepper.",
  },
  {
    "assets": "assets/step/americanBurger_S2.jpeg",
    "info":
        "Season ground beef with some pepper to taste and form into burger patties with damp hands. Create a small well in the middle to prevent the burger from puffing up during cooking.",
  },
  {
    "assets": "assets/step/americanBurger_S3.jpeg",
    "info":
        "Place patties on the hot grill and cook for approx. 4 – 5 min. per side, depending on the thickness. Place a slice of cheddar cheese on each patty and let it melt for a minute.",
  },
  {
    "assets": "assets/step/americanBurger_S4.jpeg",
    "info":
        "Cut tomato and cucumber into slices. Cut the burger buns lengthwise and butter if desired.",
  },
  {
    "assets": "assets/step/americanBurger_S5.jpeg",
    "info":
        "Assemble burger with grilled patties, tomato and cucumber slices, raw onion slices, sautéed onions, iceberg lettuce, ketchup, and mayonnaise. Enjoy!",
  },
];

final imageBurger = [
  "assets/step/americanBurger_M.jpeg",
  "assets/step/americanBurger_S1.jpeg",
  "assets/step/americanBurger_S2.jpeg",
  "assets/step/americanBurger_S3.jpeg",
  "assets/step/americanBurger_S4.jpeg",
  "assets/step/americanBurger_S5.jpeg",
];
