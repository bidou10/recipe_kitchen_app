import 'package:flutter/material.dart';

class Quinoa extends StatelessWidget {
  const Quinoa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quinoa'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/Quinoa_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Quinoia',
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
              'Ingredient List: \n\n Step 1 :200 g quinoa 2 clove garlic 1 avocado 40 g baby spinach 200 g kidney beans (drained and rinsed) 4 sprigs cilantro 4 tbsp water salt \n\n Step 2 :salt \n\n Step 3 : olive oil for frying 2 egg salt pepper\n\n Step 4 :cilantro for garnish hot sauce for serving ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items List: \n\n[Step 1] :small pot,small sauce,pan with lid,cooking spoon,cutting board,knife\n\n [Step 2] :none\n\n [Step 3] :frying pan,spatula\n\n [Step 4]: none\n\n ',
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
                imageQuinoa.length,
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
    "assets": "assets/step/Quinoa_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/Quinoa_S1.jpeg",
    "info":
        "Add quinoa to a sieve, rinse under lukewarm water, and transfer to a pot. Add water and salt, bring to a boil, and cook for approx. 20 min. In the meantime, peel and crush garlic, slice avocado, and tear spinach leaves. Combine kidney beans, garlic clove, cilantro sprigs, and 2 tbsp water in a small saucepan. Add a pinch of salt and bring to a boil, then lower heat and simmer, covered partially, for approx. 5 min.",
  },
  {
    "assets": "assets/step/Quinoa_S2.jpeg",
    "info":
        "Add cooked quinoa and torn spinach leaves to bean mixture with a pinch of salt. Stir to combine, then partially cover and let cook over low heat for approx. 2 min.",
  },
  {
    "assets": "assets/step/Quinoa_S3.jpeg",
    "info":
        "In a frying pan, heat olive oil over medium-high heat and fry egg. Season with salt and pepper.",
  },
  {
    "assets": "assets/step/Quinoa_S4.jpeg",
    "info":
        "Remove garlic clove and cilantro stems from quinoa mixture and transfer mixture to a serving bowl. Top with avocado slices, fried egg, and cilantro leaves. Serve with hot sauce to taste.",
  },
];

final imageQuinoa = [
  "assets/step/Quinoa_M.jpeg",
  "assets/step/Quinoa_S1.jpeg",
  "assets/step/Quinoa_S2.jpeg",
  "assets/step/Quinoa_S3.jpeg",
  "assets/step/Quinoa_S4.jpeg"
];
