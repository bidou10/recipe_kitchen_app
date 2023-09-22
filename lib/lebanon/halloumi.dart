import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class grilledHalloumi extends StatelessWidget {
  const grilledHalloumi({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grilled Halloumi'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset(
            //   'assets/step/grilledHalloumi_M.jpeg',
            //   height: 300,
            //   width: double.infinity,
            //   fit: BoxFit.cover,
            // ),
            SizedBox(height: 16.0),
            Text(
              'Grilled Halloumi',
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
              'Ingredient List: \n\n[Step 1] :⅛ lemon (juice, divided) 4⅔ cloves garlic ⅔ tsp salt 250 ml grapeseed oil (divided) 20 ml ice water (divided)\n\n[Step 2] :1⅔ stalks green asparagus 1⅔ stalks white asparagus 2⅔ carrots 1⅓ scallions 1⅓ tomatoes 6⅔ g mint 6⅔ g parsley\n\n [Step 3] :66⅔ g halloumi 1 tbsp olive oil salt \n\n [Step 4] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:immersion blender,plastic wrap,bowl,liquid measuring cup,citrus press \n\n Step 2 :peeler,cutting board,knife \n\n Step 3 :tongs,grill pan,paper towels \n\n Step 4 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageHalloumi.length,
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
    "assets": "assets/step/grilledHalloumi_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/grilledHalloumi_S1.jpeg",
    "info":
        "Juice lemon. To prepare the Lebanese garlic sauce, known as toum, peel garlic and add to a liquid measuring cup with the salt. Pulse in short bursts with the immersion blender until the garlic is finely minced. Add a spoonful of the lemon juice and pulse until it becomes a paste. Add another spoonful of the lemon juice and process until it's completely smooth and a bit fluffy. With the immersion blender running, very slowly drizzle in one sixth of the oil in a thin stream followed by another spoonful of lemon juice. Repeat once more, using all the remaining lemon juice. Repeat again, this time alternating with one sixth of the oil and then a spoonful of the ice water, until all the oil and water has been incorporated. Transfer to a bowl, cover with plastic wrap, and set aside in the fridge.",
  },
  {
    "assets": "assets/step/grilledHalloumi_S2.jpeg",
    "info":
        "Trim the root ends off the green asparagus, and trim and peel the white asparagus. Peel the carrots and quarter lengthwise. Trim the scallions but leave them whole. Cut the tomatoes into wedges and finely chop the mint and parsley",
  },
  {
    "assets": "assets/step/grilledHalloumi_S3.jpeg",
    "info":
        "Set a grill pan over medium high heat. Using a paper towel, rub some of the oil onto the grill pan, reserving some for the next batches of grilling. Once the pan is hot, add the carrots and asparagus to the pan, season with salt. Grill until charred approx. 6 min. on each side. Remove from pan and keep warm. Next, wipe the pan with remaining olive oil and, in batches, grill the halloumi, tomatoes, and scallions for approx. 3 min. per side, seasoning the tomatoes and scallions with salt. Remove from pan",
  },
  {
    "assets": "assets/step/grilledHalloumi_S4.jpeg",
    "info":
        "Sprinkle grilled vegetables and halloumi with chopped mint and parsley. Serve with garlic sauce and enjoy!",
  },
];

final imageHalloumi = [
  "assets/step/grilledHalloumi_M.jpeg",
  "assets/step/grilledHalloumi_S1.jpeg",
  "assets/step/grilledHalloumi_S2.jpeg",
  "assets/step/grilledHalloumi_S3.jpeg",
  "assets/step/grilledHalloumi_S4.jpeg",
];
