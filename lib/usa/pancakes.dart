import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class Pancakes extends StatelessWidget {
  const Pancakes({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pancakes'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/americanPancakes_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Pancakes',
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
              'Ingredient List: \n\n[Step 1] :125 g flour ,1 tsp baking powder, 1 tbsp sugar ,⅜ tsp salt\n\n[Step 2] :1 eggs 160 ml milk 1 tbsp unsalted butter (melted)\n\n [Step 3] :none \n\n [Step 4] : chocolate chip unsalted butter (for frying) maple syrup (for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1: liquid measuring cup,whisk \n\n Step 2 :liquid measuring cup \n\n Step 3 :none \n\n Step 4 :frying pan, spatula \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imagePancakes.length,
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
    "assets": "assets/step/americanPancakes_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/americanPancakes_S1.jpeg",
    "info": "Combine flour, baking powder, sugar, and salt and set aside.",
  },
  {
    "assets": "assets/step/americanPancakes_S2.jpeg",
    "info":
        "Beat eggs and milk together in another measuring cup, then stir in cooled melted butter until combined.",
  },
  {
    "assets": "assets/step/americanPancakes_S3.jpeg",
    "info":
        "Pour wet ingredients into dry and stir just until combined (it should look a little lumpy).",
  },
  {
    "assets": "assets/step/americanPancakes_S4.jpeg",
    "info":
        "Heat pan over medium heat and add enough butter to coat well. Pour batter onto pan in small circles; if using, sprinkle with chocolate chips. Cook until their tops bubble and bottoms turn golden brown, approx. 1 – 2 min. Flip pancake and cook for approx. 30 more sec. If needed, add more butter and adjust heat as you go to prevent sticking or burning. Serve immediately. Enjoy with more butter and a drizzle of maple syrup.",
  },
];

final imagePancakes = [
  "assets/step/americanPancakes_M.jpeg",
  "assets/step/americanPancakes_S1.jpeg",
  "assets/step/americanPancakes_S2.jpeg",
  "assets/step/americanPancakes_S3.jpeg",
  "assets/step/americanPancakes_S4.jpeg",
];
