import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class porkRibs extends StatelessWidget {
  const porkRibs({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pork Ribs'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/porkRibs_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Pork Ribs',
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
              'Ingredient List: \n\n[Step 1] :250 g pork ribs ¼ tbsp salt ⅛ tbsp pepper 1 tbsp cooking wine 250 ml vegetable oil ½ clove garlic 1 green onion 5 g ginger ¼ red bell pepper ¼ green bell pepper\n\n[Step 2] :25 g potato starch\n\n [Step 3] :none \n\n [Step 4] :1½ tbsp black vinegar 1½ tsp sugar 77½ ml water ¼ tbsp salt 25 g potato starch',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:wok,large bowl,meat cleaver,cutting board \n\n Step 2 :none \n\n Step 3 :sieve \n\n Step 4 :small bowl \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imagePorkRibs.length,
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
    "assets": "assets/step/porkRibs_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/porkRibs_S1.jpeg",
    "info":
        "Clean ribs and chop into bite-sized pieces using a meat cleaver. Transfer to a bowl and marinate ribs in salt, pepper, and cooking wine for approx. 5 – 10 min. Add oil to wok and bring to temperature for frying over high heat. Mince garlic, cut green onion into fine rings, and mince ginger. Cut bell peppers into chunks",
  },
  {
    "assets": "assets/step/porkRibs_S2.jpeg",
    "info":
        "Sprinkle potato starch over ribs and mix thoroughly until ribs are evenly coated",
  },
  {
    "assets": "assets/step/porkRibs_S3.jpeg",
    "info":
        "Fry ribs in vegetable oil in a wok over high heat for approx. 3 – 5 min. until golden brown. Remove from heat and transfer to a sieve set over large bowl to drain oil. Remove any excess oil from wok",
  },
  {
    "assets": "assets/step/porkRibs_S4.jpeg",
    "info":
        "Add green garlic, ginger, and green onion to oil and sauté for approx. 1 min. Then, very carefully add vinegar, sugar, half of water, and salt, and stir to combine. While sauce cooks, combine potato starch and rest of water in small bowl. Return ribs to pan and cook for approx. 1 min. Add bell peppers and stir thoroughly to mix well. Add starch slurry, a bit at a time, to thicken sauce. Enjoy alone or on a bed of rice!",
  },
];

final imagePorkRibs = [
  "assets/step/porkRibs_M.jpeg",
  "assets/step/porkRibs_S1.jpeg",
  "assets/step/porkRibs_S2.jpeg",
  "assets/step/porkRibs_S3.jpeg",
  "assets/step/porkRibs_S4.jpeg",
];
