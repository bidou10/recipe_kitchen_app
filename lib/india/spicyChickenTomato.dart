import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class spicyChickenTomato extends StatelessWidget {
  const spicyChickenTomato({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spicy Chicken Tomato'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/spicyChickenTomato_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Spicy Chicken Tomato',
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
              'Ingredient List: \n\n[Step 1] :1 carrots ½ bell pepper ½ onion 1 cloves garlic 5 g ginger 1 scallions 250 g chicken breasts\n\n[Step 2] :vegetable oil ,50 g tomato paste\n\n [Step 3] :1 tsp red curry paste 250 ml coconut milk \n\n [Step 4] :½ tbsp curry powder ½ tsp ground turmeric ½ tbsp garam masala salt pepper\n\n[Step 5]:50 g cashews 25 g butter (melted) 50 g yogurt',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board, knife \n\n Step 2 :Cooktop \n\n Step 3 : saucepan (large)cooking spoon\n\n Step 4 :none \n\n Step 5 :none ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageSpicyChickenTomato.length,
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
    "assets": "assets/step/spicyChickenTomato_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/spicyChickenTomato_S1.jpeg",
    "info":
        "Cut carrots and bell pepper into small cubes. Dice onion, garlic, and ginger. Finely slice green onion. Cut chicken into strips",
  },
  {
    "assets": "assets/step/spicyChickenTomato_S2.jpeg",
    "info":
        "Heat some vegetable oil in a large saucepan over medium heat. Sauté garlic and ginger for approx. 2 – 3 min. Then, add tomato paste and continue to sauté",
  },
  {
    "assets": "assets/step/spicyChickenTomato_S3.jpeg",
    "info":
        "Add red curry paste and lightly roast. Stir occasionally to avoid burning. Deglaze with coconut milk",
  },
  {
    "assets": "assets/step/spicyChickenTomato_S4.jpeg",
    "info":
        "Add chicken, onion, carrot, and bell pepper to saucepan. Add curry powder, turmeric, garam masala, salt, and pepper and stir to combine. Continue to cook over medium-low heat, stirring occasionally, until chicken is cooked through and vegetables are tender, approx. 15 – 20 min.",
  },
  {
    "assets": "assets/step/spicyChickenTomato_S5.jpeg",
    "info":
        "Reduce heat to low and stir in cashews, melted butter, and yogurt. Season to taste. Garnish with green onions. Enjoy with potatoes, rice, or naan.",
  },
];

final imageSpicyChickenTomato = [
  "assets/step/spicyChickenTomato_M.jpeg",
  "assets/step/spicyChickenTomato_S1.jpeg",
  "assets/step/spicyChickenTomato_S2.jpeg",
  "assets/step/spicyChickenTomato_S3.jpeg",
  "assets/step/spicyChickenTomato_S4.jpeg",
];
