import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class pastaAlLimone extends StatelessWidget {
  const pastaAlLimone({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pasta Al Limone'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/pastaAlLimone_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Pasta Al Limone',
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
              'Ingredient List: \n\n[Step 1] :1 clove garlic ½ lemon 25 g Parmesan cheese ½ chili 10 g parsley\n\n[Step 2] :25 g butter 25 ml olive oil 200 g tagliatelle salt\n\n [Step 3] :300 ml pasta water salt pepper \n\n [Step 4] :Parmesan cheese (for garnish)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:pot (large) knife,cutting board,fine grater,citrus press \n\n Step 2 :Cooktop, e.g. from Siemensfrying pan (large)cooking spoon \n\n Step 3 :ladle,tongs \n\n Step 4 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imagePastaLimone.length,
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
    "assets": "assets/step/pastaAlLimone_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/pastaAlLimone_S1.jpeg",
    "info":
        "Half-fill a large pot with water. Bring to the boil over high heat. Meanwhile, peel the garlic, then crush it with the flat side of your knife. Zest and juice the lemon. Finely grate Parmesan. Finely slice chili, if using. Finely mince parsley",
  },
  {
    "assets": "assets/step/pastaAlLimone_S2.jpeg",
    "info":
        "Add butter and olive oil to a frying pan set over medium heat. Once butter has melted, add the garlic and chili and heat slowly, stirring, approx. 2 min. In the meantime, salt the pasta water once it’s reached a rolling boil, then add the pasta to the pot and cook for 2 min. less than the recommended cooking time, until very al dente, approx 4 min",
  },
  {
    "assets": "assets/step/pastaAlLimone_S3.jpeg",
    "info":
        "Just before the pasta is ready, add lemon zest and juice to the frying pan and season the mixture with salt and pepper. Scoop out the recommended amount of pasta water, add to the pan, and turn the heat up to medium-high so it bubbles and reduces. Transfer the pasta across to the frying pan using tongs. Use the tongs to keep tossing the pasta in the sauce, approx. 2 min. until it thickens, reduces, and is glossy. Add extra pasta water to adjust to the desired consistency, if needed.",
  },
  {
    "assets": "assets/step/pastaAlLimone_S4.jpeg",
    "info":
        "Remove the pan from heat, add half the Parmesan cheese and continue to toss vigorously with the tongs. Repeat with the remaining half until incorporated into a creamy sauce. Serve and garnish with parsley, lemon zest, and extra Parmesan if desired. Enjoy!",
  },
];

final imagePastaLimone = [
  "assets/step/pastaAlLimone_M.jpeg",
  "assets/step/pastaAlLimone_S1.jpeg",
  "assets/step/pastaAlLimone_S2.jpeg",
  "assets/step/pastaAlLimone_S3.jpeg",
  "assets/step/pastaAlLimone_S4.jpeg",
];
