import 'package:flutter/material.dart';

class raguMushroom extends StatelessWidget {
  const raguMushroom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ragu mushroom'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              '',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Ragu mushroom',
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
              'Ingredient List: \n\n[Step 1] :90 g shiitake mushrooms ¾ carrots ⅜ onion 4 cloves garlic\n\n[Step 2] :24 ml canola oil ⅜ tsp salt\n\n [step 3] :⅜ tsp chili flakes 44 g gochujang ⅜ tbsp Korean black bean paste 24 ml soy sauce \n\n [Step 4] : 160 g udon noodles 60 ml pasta water cilantro (for garnish) scallion (for garnish)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1: 1 cutting board,1 knife,1 peeler,1 food processor,1 bowl \n\n Step 2 :1 pot,1 cooking spoon \n\n Step 3 :1 bowl \n\n Step 4 :1 pot,1 colander ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageRagu.length,
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
    "assets": "assets/step/RaguMushroom_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/RaguMushroom_S1.jpeg",
    "info":
        "Remove the stems from the mushrooms and quarter. Peel carrots, onion, and garlic. Add mushrooms to a food processor and pulse just until roughly chopped and transfer to a bowl. Add carrots, onion, and garlic to the food processor and pulse until roughly chopped.",
  },
  {
    "assets": "assets/step/RaguMushroom_S2.jpeg",
    "info":
        "Heat oil in a heavy-bottomed pot over medium heat. Add mushrooms, carrots, onion, garlic and salt. Cook until very soft, approx. 10 min.",
  },
  {
    "assets": "assets/step/RaguMushroom_S3.jpeg",
    "info":
        "Add chili flakes, gochujang, black bean paste, and soy sauce to a bowl. Stir until smooth, then add to the pot, stirring to combine. Bring to a simmer, then reduce heat to low and let simmer, stirring often, for approx. 12 min.",
  },
  {
    "assets": "assets/step/RaguMushroom_S4.jpeg",
    "info":
        "In the meantime, cook noodles in a pot of boiling water according to package instructions and drain, reserving some cooking water. Thin out ragu with the cooking water as desired, then season to taste with salt. Serve noodles with ragu and top with cilantro and fried onions, if desired. Enjoy!",
  },
];

final imageRagu = [
  "assets/step/RaguMushroom_M.jpeg",
  "assets/step/RaguMushroom_S1.jpeg",
  "assets/step/RaguMushroom_S2.jpeg",
  "assets/step/RaguMushroom_S3.jpeg",
  "assets/step/RaguMushroom_S4.jpeg",
];
