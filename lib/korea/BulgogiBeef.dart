import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class bulgogiBeef extends StatelessWidget {
  const bulgogiBeef({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bulgogi Beef'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/BulgogiBeef_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Bulgogi Beef',
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
              'Ingredient List: \n\n[Step 1] :220 g flank steak\n\n[Step 2] :¾ cloves garlic ⅜ tsp ginger 1⅝ tbsp soy sauce ¾ tbsp rice wine ¾ tbsp sugar ⅜ tbsp roasted sesame oil ⅜ tsp Sriracha ¾ green onions\n\n [Step 3] :⅜ tsp sesame seeds \n\n [Step 4] :⅜ tbsp vegetable oil 120 g rice (cooked)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:large freezer bag or large bowl,plastic wrap,cutting board,knife \n\n Step 2 :small bowl \n\n Step 3 :plastic wrap, small frying pan \n\n Step 4 : large frying pan,cooking spoon,cutting board,knife ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageBulgogiBeef.length,
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
    "assets": "assets/step/BulgogiBeef_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/BulgogiBeef_S1.jpeg",
    "info":
        "Wrap beef in plastic wrap and freeze for approx. 1 hr. for easier slicing. Cut beef against the grain into thin slices. Place in large freezer bag or large bowl.",
  },
  {
    "assets": "assets/step/BulgogiBeef_S2.jpeg",
    "info":
        "Mince garlic and ginger. Combine soy sauce, rice wine, sugar, sesame oil, sriracha, and minced garlic and ginger in small bowl. Stir to combine. Finely chop white and light green parts of green onion and add to marinade; save the dark green parts for serving.",
  },
  {
    "assets": "assets/step/BulgogiBeef_S3.jpeg",
    "info":
        "Pour marinade over beef and stir to coat. Seal bag or cover bowl with plastic wrap and marinate in refrigerator for approx. 30 min. or up to 8 hrs. Meanwhile, toast sesame seeds in a frying pan over medium heat until fragrant.",
  },
  {
    "assets": "assets/step/BulgogiBeef_S4.jpeg",
    "info":
        "Heat vegetable oil in large frying pan over medium-high heat. Add meat along with its marinade. Fry, stirring frequently, until most of the liquid has evaporated and beef is cooked through. Slice dark green parts of green onions and stir into beef. Sprinkle with toasted sesame seeds. Serve with warm rice.",
  },
];

final imageBulgogiBeef = [
  "assets/step/BulgogiBeef_M.jpeg",
  "assets/step/BulgogiBeef_S1.jpeg",
  "assets/step/BulgogiBeef_S2.jpeg",
  "assets/step/BulgogiBeef_S3.jpeg",
  "assets/step/BulgogiBeef_S4.jpeg",
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
