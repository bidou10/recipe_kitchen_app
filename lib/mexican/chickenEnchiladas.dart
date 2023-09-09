import 'package:flutter/material.dart';

class ChickenEnchiladas extends StatelessWidget {
  const ChickenEnchiladas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken Enchiladas'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/ChickenEnchiladas_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chicken Enchiladas',
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
              'Items List: \n\n[Step 1] :oven,cutting board,knife\n\n [Step 2] :none \n\n [Step 3] :frying pan,cooking spoon\n\n [Step 4]:large bowl,cutting board, knife \n\n [Step 5]:frying pan,cooking spoon \n\n [Step 6]:large bowl,cooking spoon \n\n [Step 7]:baking dish,oven',
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
                imageChickenEnchiladas.length,
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
    "assets": "assets/step/ChickenEnchiladas_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/ChickenEnchiladas_S1.jpeg",
    "info":
        "Preheat the oven to 160°C/325°F. Finely dice garlic, onion, and chili pepper. Cut bell peppers into bite-sized pieces.",
  },
  {
    "assets": "assets/step/ChickenEnchiladas_S2.jpeg",
    "info": "Cut chicken into bite-sized pieces.",
  },
  {
    "assets": "assets/step/ChickenEnchiladas_S3.jpeg",
    "info":
        "In a frying pan, sauté chicken in some vegetable oil over medium-high heat for approx. 7 - 10 min. until browned. Season with salt and pepper. Set aside and allow to cool.",
  },
  {
    "assets": "assets/step/ChickenEnchiladas_S4.jpeg",
    "info":
        "Pick cilantro leaves off stems and roughly chop. Then, in a large bowl, mix together half of cheese, crème fraîche, and cilantro. Season with paprika, salt, and pepper to taste.",
  },
  {
    "assets": "assets/step/ChickenEnchiladas_S5.jpeg",
    "info":
        "In a frying pan, sauté onion, garlic, peppers, and corn in some vegetable oil over medium heat for approx. 5 - 7 min. until onions are translucent and garlic is lightly browned. Season with salt and pepper.",
  },
  {
    "assets": "assets/step/ChickenEnchiladas_S6.jpeg",
    "info":
        "Add sautéed vegetables and chicken to crème fraîche and cheese mixture. Stir well to combine.",
  },
  {
    "assets": "assets/step/ChickenEnchiladas_S7.jpeg",
    "info":
        "Place some of the filling into a tortilla and roll tightly. Arrange enchiladas in a baking dish, top with the rest of the cheese, and bake in the oven at 160°C/325°F for approx. 8 - 10 min. until cheese is melted. Enjoy right away!",
  },
];

final imageChickenEnchiladas = [
  "assets/step/ChickenEnchiladas_M.jpeg",
  "assets/step/ChickenEnchiladas_S1.jpeg",
  "assets/step/ChickenEnchiladas_S2.jpeg",
  "assets/step/ChickenEnchiladas_S3.jpeg",
  "assets/step/ChickenEnchiladas_S4.jpeg",
  "assets/step/ChickenEnchiladas_S5.jpeg",
  "assets/step/ChickenEnchiladas_S6.jpeg",
  "assets/step/ChickenEnchiladas_S7.jpeg",
];
