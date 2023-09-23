import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class zucchini extends StatelessWidget {
  const zucchini({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('zucchini'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/zucchini_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'zucchini',
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
              'Ingredient List: \n\n[Step 1] :¼ zucchini ⅛ clove garlic 20 g mozzarella cheese ½ sprigs marjoram 5 ml water olive oil\n\n[Step 2] :4 g grated Parmesan cheese breadcrumb ⅛ egg ⅛ tsp Piment d Espelette salt pepper\n\n [Step 3] :peanut oil lemon (for serving) ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife,frying pan,rubber spatula \n\n Step 2 :bowl, fork \n\n Step 3 :pot,slotted spoon,paper towels ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageZucchini.length,
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
    "assets": "assets/step/zucchini_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/zucchini_S1.jpeg",
    "info":
        "Dice zucchini and mince garlic. Cube mozzarella. Remove leaves from marjoram sprigs and set aside. Heat olive oil in a frying pan, add zucchini and garlic, and sauté. Once lightly browned, add water and let cook until soft",
  },
  {
    "assets": "assets/step/zucchini_S2.jpeg",
    "info":
        "Transfer zucchini mixture to a bowl and crush with a fork. Add marjoram, mozzarella, Parmesan, half the breadcrumbs, egg, Piment d'Espelette, salt, and pepper. Mix to combine. Using your hands, shape the mixture into small balls. Roll them in remaining breadcrumbs",
  },
  {
    "assets": "assets/step/zucchini_S3.jpeg",
    "info":
        "Heat peanut oil to 190°C/375°F in a tall pot and fry zucchini balls until golden brown, approx. 3 min. Drain on a paper towel-lined plate. Serve with lemon wedges and enjoy",
  },
];

final imageZucchini = [
  "assets/step/zucchini_M.jpeg",
  "assets/step/zucchini_S1.jpeg",
  "assets/step/zucchini_S2.jpeg",
  "assets/step/zucchini_S3.jpeg",
];
