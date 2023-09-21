import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class chickenPilaf extends StatelessWidget {
  const chickenPilaf({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken Pilaf'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/chickenPilaf_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chicken Pilaf',
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
              'Ingredient List: \n\n[Step 1] :100 g basmati rice 10 g cilantro ½ onion ½ clove garlic 50 g carrot 175 g chicken breast 50 g green beans\n\n[Step 2] :25 g butter\n\n [Step 3] :5 g cumin 5 g masala ¼ tsp chili powder 5 g turmeric 25 g ginger 50 g yogurt \n\n [Step 4] :212½ ml chicken stock salt pepper\n\n [Step 5] :½ lemon',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board, knife \n\n Step 2 :large saucepan \n\n Step 3 :fine grater \n\n Step 4 :mesuring cup \n\n Step 5 :none \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageChickenPilaf.length,
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
    "assets": "assets/step/chickenPilaf_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/chickenPilaf_S1.jpeg",
    "info":
        "Wash rice in cold water and set aside. Roughly chop cilantro. Finely dice onion and garlic. Peel carrot. Cut carrot, chicken, and green beans into bite-sized pieces",
  },
  {
    "assets": "assets/step/chickenPilaf_S2.jpeg",
    "info":
        "In a large saucepan, sauté onion and garlic in butter over medium heat for approx. 2 – 3 min. Then, add chicken and sauté for approx. 5 – 7 min. until opaque. Set chicken aside",
  },
  {
    "assets": "assets/step/chickenPilaf_S3.jpeg",
    "info":
        "Grate ginger. Then, add cumin, masala, chili powder, turmeric, and ginger to pan. Sauté for approx. 1 – 2 min. Add yogurt, cook until it begins to boil, and then add rice",
  },
  {
    "assets": "assets/step/chickenPilaf_S4.jpeg",
    "info":
        "Add carrots and green beans to pan and sauté for approx. 3 – 5 min. Pour chicken stock into pan and season with salt and pepper. Bring everything to a boil and then reduce to low heat. Cover with a lid and cook for approximately 10 – 12 min. until rice is done.",
  },
  {
    "assets": "assets/step/chickenPilaf_S5.jpeg",
    "info":
        "Return cooked chicken to pan. Add cilantro and lemon juice. Stir thoroughly. Enjoy warm with homemade naan bread",
  },
];

final imageChickenPilaf = [
  "assets/step/chickenPilaf_M.jpeg",
  "assets/step/chickenPilaf_S1.jpeg",
  "assets/step/chickenPilaf_S2.jpeg",
  "assets/step/chickenPilaf_S3.jpeg",
  "assets/step/chickenPilaf_S4.jpeg",
  "assets/step/chickenPilaf_S5.jpeg",
];
