import 'package:flutter/material.dart';

class kimbap extends StatelessWidget {
  const kimbap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kimbap'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/Kimbap_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Kimchi',
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
              'Ingredient List: \n\n[Step 1] :200 g sushi rice 250 ml water\n\n[Step 2] :1 mini cucumber 1 carrot 12 green beans 5 leaves Swiss chard 2 cloves garlic 5 g ginger \n\n [Step 3] :1 tbsp soy sauce 100 ml rice vinegar 1 tbsp sugar 1 tsp salt salt pepper \n\n [Step 4] :2 eggs salt toasted sesame oil \n\n [Step 5] : toasted sesame oil salt \n\n [Step 6] :2 sheets dried seaweed sheets 5 g chives',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:fine sieve,pot (with lid) \n\n Step 2:cutting board,knife,peeler \n\n Step 3 :2 bowls \n\n Step 4 :bowl,whisk,nonstick pan (large) \n\n Step 5 :paper towels,bowl (large)cooking spoon \n\n Step 6 :sushi mat,pastry brush',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageKimbap.length,
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
    "assets": "assets/step/Kimbap_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/Kimbap_S1.jpeg",
    "info":
        "Add sushi rice to a fine sieve and rinse, swirling with your hands, until the water runs mostly clear. Drain as much as you can and transfer to a pot. Add water and bring rice to a boil over medium-high heat. Once boiling, reduce the heat to low, cover, and let cook for approx. 10 – 12 min. Remove from heat and let rest, covered.",
  },
  {
    "assets": "assets/step/Kimbap_S2.jpeg",
    "info":
        "Trim ends from cucumber, quarter, remove seeds, and slice into long strips. Peel carrot, slice thinly at an angle into coins, then slice into long matchsticks. Trim ends from green beans. Remove stems from Swiss chard leaves. Mince garlic and ginger.",
  },
  {
    "assets": "assets/step/Kimbap_S3.jpeg",
    "info":
        "Add green beans, half the garlic, half the ginger, and soy sauce to a bowl. Season with salt and pepper and a pinch of sugar. Toss to combine, then set aside. Whisk rice vinegar, sugar, and salt in a bowl until the sugar and salt dissolve. Add carrots and cucumber, tossing well to combine. Set aside.",
  },
  {
    "assets": "assets/step/Kimbap_S4.jpeg",
    "info":
        "Whisk eggs in a bowl and season with salt. Heat a large nonstick frying pan over medium-high heat. Add some toasted sesame oil, then add eggs and tilt the pan to make a thin omelette that fills the pan. Once the bottom is set, carefully flip the omelette, and let cook for approx. 1 min. more. Once the second side is set, remove to a cutting board and slice the omelette into strips.",
  },
  {
    "assets": "assets/step/Kimbap_S5.jpeg",
    "info":
        "Using the same pan you made the eggs in, stir fry the green beans over medium-high heat until crisp tender, approx. 5 min. Remove from heat, then wipe out and fill the pan with water. Bring to a simmer, then blanch the Swiss chard leaves. Drain well and squeeze really well to remove all excess water. Season with remaining garlic, ginger, some toasted sesame oil, and salt. Gently mix rice with toasted sesame oil and salt to season.",
  },
  {
    "assets": "assets/step/Kimbap_S6.jpeg",
    "info":
        "To assemble the kimbap, place a sheet of nori (shiny side down) on a bamboo rolling mat. Spread half the rice over the nori, leaving about 2 inches exposed on the top. Place half the green beans, Swiss chard, chives, egg strips, and pickled cucumber and carrot (draining well) into the center of the rice. Use the mat and both hands to help you roll the kimbap, pressing it into a very tight roll. Remove the roll and repeat. Brush the kimbap with some toasted sesame oil, then slice into thick pieces. Serve immediately or pack up and enjoy later!",
  },
];

final imageKimbap = [
  "assets/step/Kimbap_M.jpeg",
  "assets/step/Kimbap_S1.jpeg",
  "assets/step/Kimbap_S2.jpeg",
  "assets/step/Kimbap_S3.jpeg",
  "assets/step/Kimbap_S4.jpeg",
  "assets/step/Kimbap_S5.jpeg",
  "assets/step/Kimbap_S6.jpeg",
];
