import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class koreanBBQ extends StatelessWidget {
  const koreanBBQ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Korean BBQ'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/koreanBBQ_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'korean bbq',
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
              'Ingredient List: \n\n[Step 1] :5 g ginger ,1 clove garlic, 1 onion\n\n[Step 2] :none\n\n [Step 3] :15 ml sesame oil 10 drops fish sauce 30 ml sake 30 ml soy sauce 30 ml pear juice 1 tbsp sugar salt pepper \n\n [Step 4] :300 g beef \n\n [Step 5] :none\n\n [Step 6] :1 tbsp miso paste 1 tbsp gochujang 1 tsp sesame oil 120 ml pear juice \n\n [Step 7] : vegetable oil for frying \n\n [Step 8] :2 spring onions lettuce leaves to serve kimchi to serve pickled gherkins to serve \n\n',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1: cutting board,knife\n\n Step 2 :food processor or crusher \n\n Step 3 :none \n\nStep 4 :cutting board, knife \n\n Step 5 :resealable freezer bag (optional) \n\nStep 6 :small bowl \n\nStep 7 :large frying pan \n\nStep 8 :cutting board, knife \n\n',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageKoreanBBQ.length,
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
    "assets": "assets/step/koreanBBQ_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/koreanBBQ_S1.jpeg",
    "info": "First, peel ginger and garlic clove. Peel and quarter onion.",
  },
  {
    "assets": "assets/step/koreanBBQ_S2.jpeg",
    "info":
        "For the marinade, work the ginger, garlic, and onion into a fine paste with the food processor.",
  },
  {
    "assets": "assets/step/koreanBBQ_S3.jpeg",
    "info":
        "Then add some of the sesame oil, fish sauce, sake, soy sauce, some of the pear juice, sugar, salt, and pepper to the paste and mix again using the food processor.",
  },
  {
    "assets": "assets/step/koreanBBQ_S4.jpeg",
    "info": "Cut beef into slices approx. 0.5 cm thin.",
  },
  {
    "assets": "assets/step/koreanBBQ_S5.jpeg",
    "info":
        "Add beef slices to the marinade and leave covered in a cold place for approx. 1 - 2 hours. Resealable freezer bags are particularly effective for this, as they save storage space.",
  },
  {
    "assets": "assets/step/koreanBBQ_S6.jpeg",
    "info":
        "For the dip, stir together the miso paste, gochujang, remaining sesame oil, and remaining pear juice.",
  },
  {
    "assets": "assets/step/koreanBBQ_S7.jpeg",
    "info":
        "Remove meat from the marinade and sear in a hot frying pan with some vegetable oil.",
  },
  {
    "assets": "assets/step/koreanBBQ_S8.jpeg",
    "info":
        "In the meantime, slice the spring onions into fine rings and sprinkle over the fried meat. Serve hot, straight from the pan, with lettuce leaves, kimchi, and pickled gherkins.",
  },
];

final imageKoreanBBQ = [
  "assets/step/koreanBBQ_M.jpeg",
  "assets/step/koreanBBQ_S1.jpeg",
  "assets/step/koreanBBQ_S2.jpeg",
  "assets/step/koreanBBQ_S3.jpeg",
  "assets/step/koreanBBQ_S4.jpeg",
  "assets/step/koreanBBQ_S5.jpeg",
  "assets/step/koreanBBQ_S6.jpeg",
  "assets/step/koreanBBQ_S7.jpeg",
  "assets/step/koreanBBQ_S8.jpeg",
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
