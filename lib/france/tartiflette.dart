import 'package:flutter/material.dart';

class tartiflette extends StatelessWidget {
  const tartiflette({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tartiflette'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/Tartiflette_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Tartiflette',
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
              'Ingredient List: \n\n[Step 1] :½ kg floury potato ,salt\n\n[Step 2] :1 onions ½ clove garlic 100 g smoked bacon ½ tbsp olive oil 100 ml white wine\n\n [step 3] : 250 g Reblochon cheese 75 ml milk salt pepper ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:oven ,pot \n\n Step 2 :cutting board,knife,frying pan (large)spatula \n\n Step 3 :baking dish \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageTartiflette.length,
                (index) {
                  return ListTile(
                    leading: SizedBox(
                      height: 70,
                      width: 110, // Ajustez la largeur ici
                      child: Image.asset(
                        product[index]['assets'] as String,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      'Step $index',
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      '${product[index]['info']},',
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.7,
                          fontWeight: FontWeight.w600),
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
    "assets": "assets/step/Tartiflette_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/Tartiflette_S1.jpeg",
    "info":
        "Preheat oven to 200°C/400°F. Add potatoes to a pot of cold water. The water should be enough to cover the potatoes. Season with salt, then bring to a boil over medium-high heat and let boil for approx. 10 - 15 min., or until fork tender. Drain and let cool.",
  },
  {
    "assets": "assets/step/Tartiflette_S2.jpeg",
    "info":
        "In the meantime, peel and mince onions and garlic. Roughly chop bacon. Heat olive oil in a large pan over medium heat and sauté bacon and onions for approx. 3 min. Add garlic and sauté for 2 min. more. Deglaze with white wine and let cook for approx. 2 min.",
  },
  {
    "assets": "assets/step/Tartiflette_S3.jpeg",
    "info":
        "Peel and slice cooked, cooled potatoes. Add half of the potato slices to a baking dish. Season with salt and pepper and top with half of the bacon-onion mixture. Layer over half the sliced Reblochon and repeat the process with remaining ingredients. Cover with milk and bake at 200ºC/400ºF for approx. 30 – 40 min., until the top is golden brown. Enjoy!",
  },
];

final imageTartiflette = [
  "assets/step/Tartiflette_M.jpeg",
  "assets/step/Tartiflette_S1.jpeg",
  "assets/step/Tartiflette_S2.jpeg",
  "assets/step/Tartiflette_S3.jpeg",
];
