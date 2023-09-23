import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class sauerkraut extends StatelessWidget {
  const sauerkraut({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sauerkraut'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/sauerkrautPork_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'sauerkraut',
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
              'Ingredient List: \n\n[Step 1] :1 carrot ½ celery root 2 onions\n\n[Step 2] :100 g sugar 500 g sauerkraut\n\n [Step 3] : 500 ml apple juice 200 ml white wine 80 g butter\n\n [Step 4] :2 kg pork shoulder 5 cloves 4 tbsp mustard ½ tsp salt ½ tsp pepper ½ tsp paprika ½ tsp caraway seeds \n\n [Step 5] :1 tbsp tomato paste 100 ml apple juice vegetable oil for frying',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:oven,cutting board,knife \n\n Step 2 : large saucepan\n\n Step 3 :none \n\n Step 4 : cutting board,knife\n\n Step 5 :oven,roasting dish \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imagesSauerkraut.length,
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
    "assets": "assets/step/sauerkrautPork_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/sauerkrautPork_S1.jpeg",
    "info":
        "Preheat oven to 150°C/300°F. Roughly dice carrot, celery root and half of the onions. Cut remaining onions into rings.",
  },
  {
    "assets": "assets/step/sauerkrautPork_S2.jpeg",
    "info":
        "In a large saucepan, caramelize sugar and add onion rings. Once they have softened and browned, add sauerkraut and stir thoroughly.",
  },
  {
    "assets": "assets/step/sauerkrautPork_S3.jpeg",
    "info":
        "Deglaze with a part of the apple juice and all of the white wine. Add butter to pan, season with salt and pepper, and allow to simmer for approx. 30 min.",
  },
  {
    "assets": "assets/step/sauerkrautPork_S4.jpeg",
    "info":
        "In the meantime, score the skin side of the roast crosswise. Tuck cloves into the incisions. Slather the opposite side with mustard. Then, mix salt, pepper, paprika, and caraway seeds. Sprinkle mixture evenly over roast and pat it in.",
  },
  {
    "assets": "assets/step/sauerkrautPork_S5.jpeg",
    "info":
        "In a roasting dish, sauté carrot, celery root, diced onion, and tomato paste in some vegetable oil over medium-high heat for approx. 8 – 10 min. until slightly tender. Deglaze pan with the remaining apple juice. Place roast on top of vegetables and bake in preheated oven at 150°C/300°F for approx. 3 hrs. Serve on a bed of sauerkraut and roasted vegetables. Enjoy!",
  },
];

final imagesSauerkraut = [
  "assets/step/sauerkrautPork_M.jpeg",
  "assets/step/sauerkrautPork_S1.jpeg",
  "assets/step/sauerkrautPork_S2.jpeg",
  "assets/step/sauerkrautPork_S3.jpeg",
  "assets/step/sauerkrautPork_S4.jpeg",
  "assets/step/sauerkrautPork_S5.jpeg",
];
