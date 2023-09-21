import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class BombayPatatoes extends StatelessWidget {
  const BombayPatatoes({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bombay Patatoes'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset(
            //   'assets/step/bombayPotato_M.jpeg',
            //   height: 300,
            //   width: double.infinity,
            //   fit: BoxFit.cover,
            // ),
            SizedBox(height: 16.0),
            Text(
              'Bombay Patatoes',
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
              'Ingredient List: \n\n[Step 1] :500 g waxy potatoes\n\n[Step 2] :15 g ginger 1 clove garlic 2 tomatoes 1 shallot 1 green chili\n\n [Step 3] :4 tbsp vegetable oil 1 tsp black cumin seeds \n\n [Step 4] :2 tsp Kitchen Stories Curry Power seasoning (optional) 1 tsp ground coriander 1 tsp garam masala ½ tsp ground turmeric (ground) 1 tsp butter yogurt (for serving) cilantro (for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board, knife,pot \n\n Step 2 :food processor \n\n Step 3 :frying pan, spatula \n\n Step 4 :Curry power seasoning \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageBombayPotatoes.length,
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
    "assets": "assets/step/bombayPatato_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/bombayPatato_S1.jpeg",
    "info":
        "Halve potatoes or quarter them, if using bigger ones. Transfer potatoes to a large pot of salted room temperature water and bring to a boil. Once boiling, lower the heat and let simmer for approx. 10 min., or until tender. Once they are done, drain potatoes and leave in the pan to finish steaming",
  },
  {
    "assets": "assets/step/bombayPatato_S2.jpeg",
    "info":
        "Meanwhile peel ginger and garlic, and roughly chop the tomatoes. Add ginger, garlic and tomatoes to a food processor, blend until smooth, and set aside. Then thinly slice shallot and green chili",
  },
  {
    "assets": "assets/step/bombayPatato_S3.jpeg",
    "info":
        "In a large frying pan, heat 3/4 of the vegetable oil over high heat. Add the cooked potatoes and fry them until golden, remove from the pan and set aside. Reduce heat to medium, add remaining oil to the same pan. Add black cumin seeds and fry briefly for 1 min., then add minced shallot and fry for approx. 5 min., until translucent and slightly caramelized.",
  },
  {
    "assets": "assets/step/bombayPatato_S4.jpeg",
    "info":
        "Add ground coriander, garam masala and turmeric, or CURRY POWER seasoning (if using) to the pan, lower the heat and fry until fragrant while tossing frequently. Then add green chili and the tomato-ginger mixture. Cook for approx. 3 – 5 min., until the sauce reduces and becomes sticky. Transfer the fried potatoes back to the pan, add butter, toss and continue cooking for approx. 3 – 5 min. Serve with fresh coriander and a dollop of yogurt. Enjoy!",
  },
];

final imageBombayPotatoes = [
  "assets/step/bombayPatato_M.jpeg",
  "assets/step/bombayPatato_S1.jpeg",
  "assets/step/bombayPatato_S2.jpeg",
  "assets/step/bombayPatato_S3.jpeg",
  "assets/step/bombayPatato_S4.jpeg",
];
