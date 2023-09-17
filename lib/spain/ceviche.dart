import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class ceviche extends StatelessWidget {
  const ceviche({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ceviche'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/cevicheSpanish_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Ceviche',
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
              'Ingredient List: \n\n[Step 1] :2½ limes\n\n[Step 2] :½ red onion ½ bell pepper ½ stalk celery 2½ cherry tomatoes 1 stalks green onions ½ chili pepper 5 g cilantro ½ stalk lemongrass\n\n [Step 3] :¾ tbsp olive oil ,½ tbsp white wine vinegar \n\n [Step 4] :250 g salmon fillet \n\n [Step 5] :brown sugar salt pepper',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:citrus juicer \n\n Step 2 :cutting boardknife \n\n Step 3 :large bowl,whisk \n\n Step 4 :cutting board,knife  \n\n Step 5 : large bowl,cooking spoon  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageCeviche.length,
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
    "assets": "assets/step/cevicheSpanish_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/cevicheSpanish_S1.jpeg",
    "info": "Cut limes in half and juice.",
  },
  {
    "assets": "assets/step/cevicheSpanish_S2.jpeg",
    "info":
        "Finely dice red onion, bell pepper, celery, and tomatoes. Cut green onions into rings. Deseed chili and finely mince. Pluck cilantro leaves and roughly chop. Peel lemongrass and cut into fine rings.",
  },
  {
    "assets": "assets/step/cevicheSpanish_S3.jpeg",
    "info":
        "In a large bowl, whisk together lime juice, olive oil, and white wine vinegar.",
  },
  {
    "assets": "assets/step/cevicheSpanish_S4.jpeg",
    "info": "Either finely dice salmon fillet or cut into thin slices.",
  },
  {
    "assets": "assets/step/cevicheSpanish_S5.jpeg",
    "info":
        "Add red onion, bell pepper, celery, tomatoes, green onions, chili, lemongrass, and salmon to large bowl with olive oil mixture. Season to taste with salt, pepper, and brown sugar and mix well. Allow to marinate for approx. 15 - 25 min. Garnish with cilantro before serving. Enjoy!",
  },
];

final imageCeviche = [
  "assets/step/cevicheSpanish_M.jpeg",
  "assets/step/cevicheSpanish_S1.jpeg",
  "assets/step/cevicheSpanish_S2.jpeg",
  "assets/step/cevicheSpanish_S3.jpeg",
  "assets/step/cevicheSpanish_S4.jpeg",
  "assets/step/cevicheSpanish_S5.jpeg",
];
