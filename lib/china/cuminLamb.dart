import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class cuminLamb extends StatelessWidget {
  const cuminLamb({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cumin Lamb'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/cuminLamb_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Cumin Lamb',
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
              'Ingredient List: \n\n[Step 1] :15 g cilantro ½ onion ½ red chili 1 clove garlic 20 g ginger 300 g lamb fillet 3 tsp ground cumin ¼ tsp baking powder 1 tbsp starch ¼ tsp powdered chicken broth ¼ tsp salt\n\n[Step 2] :1L oil \n\n [Step 3] :1 tsp ground coriander 1 tsp ground cumin ½ tsp chili bean paste oil for frying rice for serving ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:large bowl,cutting board,knife \n\n Step 2 :slotted spoon,large pot \n\n Step 3 :wok, cooking spoon',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageCuminLamb.length,
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
    "assets": "assets/step/cuminLamb_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/cuminLamb_S1.jpeg",
    "info":
        "Chop cilantro and set aside for serving. Finely slice onion and finely chop chili, garlic, and ginger and set aside. Cut lamb into bite-sized pieces, add to a bowl, and mix with some of the cumin, baking powder, starch, chicken broth, and salt",
  },
  {
    "assets": "assets/step/cuminLamb_S2.jpeg",
    "info":
        "Heat oil in a large pot over medium heat and fry lamb for approx. 3 min., or until browned. Set aside",
  },
  {
    "assets": "assets/step/cuminLamb_S3.jpeg",
    "info":
        "Heat some oil in a wok over medium-high heat, then add onion, chili, garlic, ginger, ground coriander, and remaining ground cumin. Fry for approx. 2 min., until fragrant. Add chili bean paste and cook for another minute. Add fried lamb and briefly stir to mix. Transfer to a plate and serve with chopped cilantro and rice on the side. Enjoy!",
  },
];

final imageCuminLamb = [
  "assets/step/cuminLamb_M.jpeg",
  "assets/step/cuminLamb_S1.jpeg",
  "assets/step/cuminLamb_S2.jpeg",
  "assets/step/cuminLamb_S3.jpeg",
];
