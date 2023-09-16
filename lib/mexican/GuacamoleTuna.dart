import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class GuacamoleTuna extends StatelessWidget {
  const GuacamoleTuna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guacamole Tuna Steak'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/Guacamole_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Guacamole Tuna Steak',
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
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Ingredient List: \n\n Step 1 : ½ red onion 1 clove garlic 10 g cilantro ½ jalapeño 1 cucumber 2 avocados ½ lime (juice) ½ orange (juice) ½ tsp cumin salt\n\n Step 2 :none \n\n Step 3 :800 g tuna fillet (sushi-grade) salt pepper oil for frying ½ lemon (juice) for serving olive oil for serving \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items List: \n\n[Step 1] :citrus press,cutting board,knifelarge mixing bowl\n\n [Step 2] :none\n\n [Step 3] :nonstick pan\n\n ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageGuacamoleTuna.length,
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
    "assets": "assets/step/Guacamole_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/Guacamole_S1.jpeg",
    "info":
        "Peel the onion and garlic and finely chop. Chop cilantro, halve jalapeño, remove seeds, and finely chop. Wash cucumber, halve, and finely dice. For the guacamole, halve avocados and remove pit and flesh. Transfer half of the flesh to the bowl and mash. Mix with lime juice and orange juice until creamy. Add onion, cilantro, and jalapeño, and mix to combine. Season with garlic, cumin, and salt to taste.",
  },
  {
    "assets": "assets/step/Guacamole_S2.jpeg",
    "info":
        "Dice the remaining avocado and fold into the guacamole along with cucumber.",
  },
  {
    "assets": "assets/step/Guacamole_S3.jpeg",
    "info":
        "Season the tuna fillets with salt and pepper, rub with oil, and fry in a nonstick pan set over high heat. Fry for approx. 30 – 60 sec. on each side, for a rare seared steak. Serve immediately with a side of the guacamole, a sprinkle of lemon juice, and a drizzle of olive oil. Enjoy!",
  },
];

final imageGuacamoleTuna = [
  "assets/step/Guacamole_M.jpeg",
  "assets/step/Guacamole_S1.jpeg",
  "assets/step/Guacamole_S2.jpeg",
  "assets/step/Guacamole_S3.jpeg",
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
