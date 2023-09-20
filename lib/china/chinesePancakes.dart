import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class chinesePancakes extends StatelessWidget {
  const chinesePancakes({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chinese Pancakes'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/chinesePancakes_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chinese Pancakes',
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
              'Ingredient List: \n\n[Step 1] :400 g flour 1 tsp salt 120 ml water (hot) 90 ml water (cold)\n\n[Step 2] :50 g white sesame seeds 60 ml vegetable oil 60 g wild garlic 40 g flour 1 tsp Chinese five-spice powder 1 tsp salt\n\n [Step 3] :vegetable oil (for greasing) \n\n [Step 4] :2 tbsp sweet soy sauce 2 tbsp dark rice vinegar 1 tsp chili oil 1 tsp sugar vegetable oil (for frying)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1: bowl (large) chopsticks,plastic wrap,kitchen towel (damp, optional)\n\n Step 2 : frying pan (with lid)food processor,cutting board,knife,heatproof bowl\n\n Step 3 :rolling pin,pastry brush (optional) \n\n Step 4 :bowl (small) spatula \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageChinesePancakes.length,
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
    "assets": "assets/step/chinesePancakes_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/chinesePancakes_S1.jpeg",
    "info":
        "Add flour and salt to a large bowl and mix to combine with a pair of chopsticks. Add boiling water and continue to mix well. Add cold water and use your hands to knead until a dough forms. Adjust the amount of cold water until the dough feels soft; not sticky. Cover with plastic wrap or a damp kitchen towel and let rest for at least 30 min. at room temperature, or, ideally, in the fridge overnight.",
  },
  {
    "assets": "assets/step/chinesePancakes_S2.jpeg",
    "info":
        "Add sesame seeds to a frying pan over medium-low heat and toast until golden, then remove from the pan. In the same pan, heat up vegetable oil until hot but not smoking. Pulse sesame in a food processor (it doesn’t have to be super fine) or grind in a mortar and pestle. Chop wild garlic, add to a heatproof bowl with remaining flour, five spice powder, salt, and ground sesame seeds. Drizzle hot vegetable oil over wild garlic mixture and mix to combine.",
  },
  {
    "assets": "assets/step/chinesePancakes_S3.jpeg",
    "info":
        "After the dough has rested, grease a large wooden cutting board. Divide the dough into equal pieces. Roll out into a rectangle until very thin using an oiled rolling pin. Spread some of the wild garlic filling on top. Roll up into a long thin snake and stretch both sides out by pulling gently. Roll the log from both sides into a snail and set aside to rest; if you’re making a large batch, brush a thin layer of oil while they rest so they don’t dry out. Repeat with the rest of the ingredients. Flatten each disk with a rolling pin again, until you have pancakes about 7 - 8 in. / 20-cm in diameter.",
  },
  {
    "assets": "assets/step/chinesePancakes_S4.jpeg",
    "info":
        "To make a simple dipping sauce, mix sweet soy sauce with dark rice vinegar, chili oil, and sugar in a small bowl and set aside. Heat some vegetable oil in the same frying pan you used before over medium-low heat. Once hot, add a pancake, cover, and fry. After approx. 3 – 5 min., flip the pancake. Fry until both sides are golden brown. Repeat with all remaining pancakes and serve with the dipping sauce. Enjoy!",
  },
];

final imageChinesePancakes = [
  "assets/step/chinesePancakes_M.jpeg",
  "assets/step/chinesePancakes_S1.jpeg",
  "assets/step/chinesePancakes_S2.jpeg",
  "assets/step/chinesePancakes_S3.jpeg",
  "assets/step/chinesePancakes_S4.jpeg",
];
