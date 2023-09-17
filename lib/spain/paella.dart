import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class paella extends StatelessWidget {
  const paella({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paella Velenciana'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/paellaValenciana_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Paella valenciana',
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
              'Ingredient List: 50 g olives,175 g,cherry tomatoes,1 garlic ,1 green onions,½ onion (red),1 bell peppers (red),½ zucchini,½ eggplant,125 g,rice,1 lemons,¼ tsp,saffron,50 ml,white wine,150 ml,vegetable stock,150 g peas',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board, knife \n\n Step 2 :frying pan,cooking spoon \n\n Step 3 :none \n\n Step 4 :cutting board,knife \n\n Step 5 :frying pan,cooking spoon \n\n Step 6 :none \n\n Step 7 :none \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imagePaella.length,
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

const product = [
  {
    "assets": "assets/step/paellaValenciana_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/paellaValenciana_S1.jpeg",
    "info":
        "Drain olives. Halve cherry tomatoes, mince garlic, and thinly slice green onions. Dice red onion, bell pepper, zucchini, and eggplant into walnut-sized pieces.",
  },
  {
    "assets": "assets/step/paellaValenciana_S2.jpeg",
    "info":
        "Add some olive oil to a frying pan and sauté garlic, onion, bell peppers, zucchini, and eggplant over medium-high heat for approx. 4 – 6 min.",
  },
  {
    "assets": "assets/step/paellaValenciana_S3.jpeg",
    "info":
        "Add rice to pan, stir thoroughly to combine, and continue to sauté for approx. 1 – 2 min",
  },
  {
    "assets": "assets/step/paellaValenciana_S4.jpeg",
    "info": "fillet lemons",
  },
  {
    "assets": "assets/step/paellaValenciana_S5.jpeg",
    "info":
        "Add saffron to pan, stir thoroughly to combine, and continue to sauté for approx. 1 – 2 min.",
  },
  {
    "assets": "assets/step/paellaValenciana_S6.jpeg",
    "info":
        "Deglaze with white wine. Add vegetable stock until ingredients are just covered. Season to taste with salt and pepper. Bring everything to a boil, then reduce to a simmer and cook for approx. 15 – 20 min. until rice is al dente. Stir occasionally.",
  },
  {
    "assets": "assets/step/paellaValenciana_S7.jpeg",
    "info":
        "Gently fold in lemon fillets, tomatoes, olives, green onions, and peas. Continue to sauté approx. for 5 – 6 min. Enjoy!",
  },
];

final imagePaella = [
  "assets/step/paellaValenciana_M.jpeg",
  "assets/step/paellaValenciana_S1.jpeg",
  "assets/step/paellaValenciana_S2.jpeg",
  "assets/step/paellaValenciana_S3.jpeg",
  "assets/step/paellaValenciana_S4.jpeg",
  "assets/step/paellaValenciana_S5.jpeg",
  "assets/step/paellaValenciana_S6.jpeg",
  "assets/step/paellaValenciana_S7.jpeg",
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
