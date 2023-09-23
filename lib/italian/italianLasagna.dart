import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class italianLasagna extends StatelessWidget {
  const italianLasagna({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Italian Lasagna'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/italianLasagna_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Italian Lasagna',
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
              'Ingredient List: \n\n[Step 1] :⅓ clove garlic ⅓ onion ⅔ carrots\n\n[Step 2] :166⅔ g ground beef olive oil salt pepper\n\n [Step 3] :⅔ tsp dried oregano \n\n [Step 4] :16⅔ g unsalted butter 13⅓ g flour \n\n [Step 5] :166⅔ ml milk ⅛ tsp ground nutmeg \n\n [Step 6] :50 g lasagna noodles \n\n [Step 7] :20 g Parmesan cheese',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife,peeler \n\n Step 2 :pot , cooking spoon \n\n Step 3 :Pasta Magie seasoning \n\n Step 4 :oven,saucepan (small),whisk \n\n Step 5 : none\n\n Step 6 :baking dish,ladle \n\n Step 7 :grater \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageItalianLasagna.length,
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
    "assets": "assets/step/italianLasagna_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/italianLasagna_S1.jpeg",
    "info": "Finely chop garlic. Peel and dice onion and carrots.",
  },
  {
    "assets": "assets/step/italianLasagna_S2.jpeg",
    "info":
        "Heat some olive oil in a large pot and sauté onions, carrots, and garlic. Add ground beef to brown, breaking it up with a cooking spoon. Season with salt and pepper",
  },
  {
    "assets": "assets/step/italianLasagna_S3.jpeg",
    "info":
        "Now, add crushed tomatoes and season again with salt and pepper. Simmer covered over medium heat for approx. 15 - 20 min. Stir in dried oregano",
  },
  {
    "assets": "assets/step/italianLasagna_S4.jpeg",
    "info":
        "Meanwhile, preheat oven to 200°C/390°F. For the béchamel sauce, melt butter in a small sauce pan. Add flour and sauté, stirring constantly to form a roux",
  },
  {
    "assets": "assets/step/italianLasagna_S5.jpeg",
    "info":
        "Add cold milk in portions and reduce over medium heat, stirring occasionally, for approx. 5 – 8 min. Season with nutmeg and salt and pepper",
  },
  {
    "assets": "assets/step/italianLasagna_S6.jpeg",
    "info":
        "Cover bottom of baking dish with a layer of meat sauce. Top with lasagna sheets and béchamel sauce. Repeat procedure until ingredients are used up. Finish off with béchamel sauce",
  },
  {
    "assets": "assets/step/italianLasagna_S7.jpeg",
    "info":
        "op with freshly grated Parmesan and bake in preheated oven at 200°C/390°F for approx. 30 – 40 min. on the middle rack until golden. Serve hot in baking dish.",
  },
];

final imageItalianLasagna = [
  "assets/step/italianLasagna_M.jpeg",
  "assets/step/italianLasagna_S1.jpeg",
  "assets/step/italianLasagna_S2.jpeg",
  "assets/step/italianLasagna_S3.jpeg",
  "assets/step/italianLasagna_S4.jpeg",
  "assets/step/italianLasagna_S5.jpeg",
  "assets/step/italianLasagna_S6.jpeg",
  "assets/step/italianLasagna_S7.jpeg",
];
