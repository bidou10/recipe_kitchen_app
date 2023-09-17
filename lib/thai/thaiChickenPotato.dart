import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class thaiChickenPotato extends StatelessWidget {
  const thaiChickenPotato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thai chicken sweet potato'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/thaiChickenPotato_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Thai chicken with sweet potato',
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
              'Ingredient List: \n\n[Step 1] : ⅓ onion, ⅓ tbsp coconut oi,l 183⅓ g chicken breasts ,salt ,pepper \n\n [Step 2] :none \n\n [Step 3] :⅓ sweet potato ,133⅓ ml coconut milk ,40 ml water ,1 tbsp Thai red curry paste ,½ tsp light brown sugar ,⅛ tsp chicken flavor bouillon (powdered) \n\n [Step 4]:8⅓ g cilantro, ⅓ Thai chili pepper for serving, 200 g jasmine rice for serving, purple cabbage for serving, fish sauce for serving lime for serving',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :large frying pan with lid,cooking spoon,cutting board, knife,large mixing bowl \n\n Step 2 :none \n\n Step 3 :none \n\n Step 4 : cutting board, knife',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageThaiChickenPotato.length,
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
    "assets": "assets/step/thaiChickenPotato_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/thaiChickenPotato_S1.jpeg",
    "info":
        "Slice onion. Dice chicken and season with salt and pepper. Heat coconut oil in large skillet over medium-high heat, then add chicken. Cook, stirring frequently, for approx. 5 – 7 min. or until browned and cooked through. Transfer to a bowl.",
  },
  {
    "assets": "assets/step/thaiChickenPotato_S2.jpeg",
    "info":
        "Add sliced onion to the same frying pan; sauté, stirring frequently, until golden brown.",
  },
  {
    "assets": "assets/step/thaiChickenPotato_S3.jpeg",
    "info":
        "Add sweet potato, coconut milk, water, curry paste, brown sugar, and bouillon to pan. Stir well, scraping up brown bits from bottom of pan. Bring to a boil, then reduce heat to low. Cover and cook for approx. 10 min. or until potatoes are fork tender..",
  },
  {
    "assets": "assets/step/thaiChickenPotato_S4.jpeg",
    "info":
        "Meanwhile, chop cilantro and chili and slice cabbage into strips. Cut lime into wedges. Stir in chicken and accumulated juices, along with fish sauce to taste. Cook until heated through. Divide rice between bowls and top with chicken mixture, cilantro, chili, and cabbage. Serve with lime wedges. Enjoy!",
  },
];

final imageThaiChickenPotato = [
  "assets/step/thaiChickenPotato_M.jpeg",
  "assets/step/thaiChickenPotato_S1.jpeg",
  "assets/step/thaiChickenPotato_S2.jpeg",
  "assets/step/thaiChickenPotato_S3.jpeg",
  "assets/step/thaiChickenPotato_S4.jpeg"
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
