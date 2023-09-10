import 'package:flutter/material.dart';

class bibimbap extends StatelessWidget {
  const bibimbap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bibimbap'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/Bibimbab_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              '',
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
              'Ingredient List: \n\n[Step 1] :200 g rice 200 ml water ¼ tsp salt 300 g spinach 2 cloves garlic 200 g carrots 200 g shiitake mushrooms 10 g cilantro\n\n[Step 2] :2 tbsp chili paste 100 ml apple juice 1 tsp brown sugar 50 ml sesame oil 2 tbsp sesame seeds\n\n [Step 3] :5 ml sesame oil 300 g beef 300 g bean sprouts soy sauce to taste vegetable oil for frying \n\n [Step 4] :2 eggs',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1: cutting board,knife,small saucepan with a lid\n\n Step 2 :small saucepan \n\n Step 3 :large frying pan,cooking spoon \n\n Step 4 :none \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imagebibimbap.length,
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
    "assets": "assets/step/Bibimbab_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/Bibimbab_S1.jpeg",
    "info":
        "Add rice, water, and salt to a small saucepan and let soak for approx. 30 min. Bring to a boil, turn down to low heat, and cover with a lid. Let simmer for approx. 10 – 12 min. or until the water has been absorbed. In the meantime, cut the spinach into bite sized pieces. Mince garlic and julienne carrot. Finely slice shiitake mushrooms and cilantro.",
  },
  {
    "assets": "assets/step/Bibimbab_S2.jpeg",
    "info":
        "For the sauce, add chili paste, apple juice, brown sugar, minced garlic, and most of the sesame oil to another small saucepan. Bring to a boil, stirring occasionally. Cook for approx. 3 - 5 min. over high heat or until the sauce has thickened. Remove from heat and stir in sesame seeds.",
  },
  {
    "assets": "assets/step/Bibimbab_S3.jpeg",
    "info":
        "Add remaining sesame oil to a large frying pan. Add beef and sauté over medium heat until browned. Set aside. In batches, sauté the bean sprouts, mushrooms, spinach, and carrots for approx. 1 - 2 min. each. Deglaze each ingredient with a little soy sauce before setting it aside and cooking the next. Fry rice and transfer to serving bowls.",
  },
  {
    "assets": "assets/step/Bibimbab_S4.jpeg",
    "info":
        "Fry eggs over medium heat until for approx. 2 – 3 min. until whites are set and yolks are runny. In the meantime, distribute vegetables and meat in layers over the rice. Drizzle some of the sauce over the bibimbap and top each bowl with a fried egg. Garnish with cilantro. Serve with remaining sauce and together with some kimchi, if desired.",
  },
];

final imagebibimbap = [
  "assets/step/Bibimbab_M.jpeg",
  "assets/step/Bibimbab_S1.jpeg",
  "assets/step/Bibimbab_S2.jpeg",
  "assets/step/Bibimbab_S3.jpeg",
  "assets/step/Bibimbab_S4.jpeg",
];
