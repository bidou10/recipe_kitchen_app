import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class bokChoyShrimp extends StatelessWidget {
  const bokChoyShrimp({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bok Choy Shrimp'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/bokChoyShrimp_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Bok Choy Shrimp',
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
              'Ingredient List: \n\n[Step 1] :3 cloves garlic 300 g baby bok choy 12 shrimp\n\n[Step 2] :120 g basmati rice 200 ml coconut milk 50 ml water ¼ tsp sugar olive oil for frying salt\n\n [Step 3] :300 g baby bok choy 70 ml vegetable stock olive oil for frying salt pepper \n\n [Step 4] :12 shrimp ½ lemon olive oil for frying salt pepper',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife \n\n Step 2 :kitchen towel,large saucepan with lid \n\n Step 3 :large frying pan with lid,cutting board,knife \n\n Step 4 :large frying pan,citrus press \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageBokChoyShrimp.length,
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
    "assets": "assets/step/bokChoyShrimp_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/bokChoyShrimp_S1.jpeg",
    "info":
        "Peel and chop garlic. Trim ends of baby bok choy, then halve. Wash shrimp and remove peel.",
  },
  {
    "assets": "assets/step/bokChoyShrimp_S2.jpeg",
    "info":
        "Rinse basmati rice under clear water. Heat oil in a large saucepan over medium heat and add rice. Fry for approx. 2 – 3 min. until translucent. Deglaze with coconut milk and water. Season with sugar and salt to taste and bring to a boil. Turn off heat, leaving the saucepan on the stove. Cover with lid and let steam for approx. 10 min. When rice is done, stir, place a clean kitchen towel in between saucepan and lid, and let sit for approx. 5 min.",
  },
  {
    "assets": "assets/step/bokChoyShrimp_S3.jpeg",
    "info":
        "Heat oil in a large frying pan set over medium-low heat. Fry half of the chopped garlic for approx. 1 – 2 min., then add baby bok choy. Season with salt and pepper. Deglaze with vegetable stock and cover pan with lid. Cook for approx. 3 – 4 min. or until bok choy is soft but firm to the bite.",
  },
  {
    "assets": "assets/step/bokChoyShrimp_S4.jpeg",
    "info":
        "Heat oil in a a second frying pan over medium heat and fry remaining garlic for approx. 1 – 2 min. Add shrimp to pan and season with salt and pepper. Reduce heat to medium-low and fry shrimp on both sides for approx. 15 sec. Deglaze with lemon juice. Serve shrimp with coconut rice and baby bok choy. Enjoy!",
  },
];

final imageBokChoyShrimp = [
  "assets/step/bokChoyShrimp_M.jpeg",
  "assets/step/bokChoyShrimp_S1.jpeg",
  "assets/step/bokChoyShrimp_S2.jpeg",
  "assets/step/bokChoyShrimp_S3.jpeg",
  "assets/step/bokChoyShrimp_S4.jpeg",
];
