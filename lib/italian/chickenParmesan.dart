import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class chickenParmesan extends StatelessWidget {
  const chickenParmesan({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken Parmesan'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/chickenParmesan_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chicken Parmesan',
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
              'Ingredient List: \n\n[Step 1] :1 onion 2 chicken breasts\n\n[Step 2] :800 ml tomatoes 2 tbsp oregano salt pepper vegetable oil for frying\n\n [Step 3] :40 g Parmesan 80 g breadcrumbs salt pepper \n\n [Step 4] : 2 eggs \n\n [Step 5] :vegetable oil for frying \n\n [Step 6] :Parmesan for serving',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife \n\n Step 2 :large saucepan, cooking spoon \n\n Step 3 :large bowl, cooking spoon \n\n Step 4 :cooking tongslarge bowlwhisk \n\n Step 5 : large frying pan\n\n  Step 6 :food mill, large bowl \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageChickenParmesan.length,
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
    "assets": "assets/step/chickenParmesan_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/chickenParmesan_S1.jpeg",
    "info":
        "Finely dice onion. Cut each chicken breast into three equal-sized pieces.",
  },
  {
    "assets": "assets/step/chickenParmesan_S2.jpeg",
    "info":
        "In a large saucepan, sauté onion in some vegetable oil over medium heat for approx. 3 – 4 min. until translucent. Add tomatoes and oregano to pan and cook for approx. 8 – 10 min. until sauce begins to thicken. Season with salt and pepper.",
  },
  {
    "assets": "assets/step/chickenParmesan_S3.jpeg",
    "info":
        "In a large bowl, mix together Parmesan and breadcrumbs. Season with salt and pepper",
  },
  {
    "assets": "assets/step/chickenParmesan_S4.jpeg",
    "info":
        "In a separate large bowl, beat together two eggs until foamy. Using tongs, dip chicken cutlets into the egg mixture and then the breadcrumb mixture. Place on a plate and set aside",
  },
  {
    "assets": "assets/step/chickenParmesan_S5.jpeg",
    "info":
        "In a large frying pan, sauté chicken in some vegetable oil over medium heat for approx. 2 - 3 min. per side until golden. Set aside.",
  },
  {
    "assets": "assets/step/chickenParmesan_S6.jpeg",
    "info":
        "Strain sauce through a food mill into a large bowl. On a plate, layer tomato sauce and chicken cutlets. Garnish with freshly shaved Parmesan, if desired. Enjoy!",
  },
];

final imageChickenParmesan = [
  "assets/step/chickenParmesan_M.jpeg",
  "assets/step/chickenParmesan_S1.jpeg",
  "assets/step/chickenParmesan_S2.jpeg",
  "assets/step/chickenParmesan_S3.jpeg",
  "assets/step/chickenParmesan_S4.jpeg",
  "assets/step/chickenParmesan_S5.jpeg",
  "assets/step/chickenParmesan_S6.jpeg",
];
