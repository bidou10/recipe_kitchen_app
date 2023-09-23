import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class KonigsbergerKlopse extends StatelessWidget {
  const KonigsbergerKlopse({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Königsberger Klopse'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/königsbergerKlopse_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Königsberger Klopse',
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
              'Ingredient List: \n\n[Step 1] :1 shallots 1⅔ anchovies ⅓ tbsp caper ⅔ bread rolls 33⅓ ml whole milk vegetable oil (for frying)\n\n[Step 2] :⅓ l water 166⅔ g ground beef 100 g ground pork ⅓ shallot ⅓ bay leaf ⅔ cloves ⅓ egg ⅓ tbsp mustard salt pepper\n\n [Step 3] :13⅓ g unsalted butter 10 g flour 16⅔ ml white wine 66⅔ ml heavy cream ⅔ tbsp capers ⅓ tsp lemon sugar vegetable oil (for frying) potato (cooked, for serving) salt pepper ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board, knife, bowl, frying pan \n\n Step 2 :pot (large)bowl (large)slotted spoon \n\n Step 3 :pot (small) whisk  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageKonigsbergerKlopse.length,
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
    "assets": "",
    "info": "Final photo",
  },
  {
    "assets": "",
    "info":
        "Finely chop two thirds of the shallots, one third of the capers, and all of the anchovies. Heat some oil in a frying pan and sauté shallots for approx. 1 – 2 min. Add milk to a mixing bowl and soak bread rolls for approx. 10 Min., until soft. Then, squeeze out the bread rolls to drain excess liquid.",
  },
  {
    "assets": "",
    "info":
        "Bring a large pot filled with water to a simmer. Stud remaining shallot with bay leaf and cloves and add to pot. In a large bowl, combine ground meat, egg, soaked bread rolls, sautéed onions, mustard, chopped anchovies, and capers. Season with salt and pepper and mix everything together thoroughly. Then, form mixture into 2-in./5-cm meatballs and carefully add them to the pot. Let meatballs simmer on low heat for approx. 15 – 18 min., until done. Remove with a slotted spoon, set aside, and keep warm. Set stock aside.",
  },
  {
    "assets": "",
    "info":
        "In the meantime, melt butter in a pot over medium heat. Whisk in flour and deglaze with white wine and two thirds of the meatball stock. Add cream and let simmer for approx. 5 min. Add remaining capers along with a little of their brine, lemon zest and juice. Season to taste with salt, pepper and a pinch of sugar. Serve meatballs with creamy caper sauce and boiled potatoes as a side.",
  },
];

final imageKonigsbergerKlopse = [
  "assets/step/königsbergerKlopse_M.jpeg",
];
