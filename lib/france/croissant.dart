import 'package:flutter/material.dart';

class croissant extends StatelessWidget {
  const croissant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Croissant'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/croissant_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chocolate Croissant',
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
              'Ingredient List: \n\n[Step 1] :1 sheet puff pastry sheet\n\n[Step 2] :6 tsp chocolate-hazelnut spread\n\n [Step 3] :20 g chopped almonds\n\n [Step 4] :none \n\n [Step 5] :1 egg',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,pizza wheel \n\n Step 2 :6 tsp chocolate-hazelnut spread \n\n Step 3 :20 g chopped almonds \n\n Step 4 :none \n\n Step 5 :bowl (small)whisk,baking sheet,parchment paper,pastry brush ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageCroissant.length,
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
    "assets": "assets/step/croissant_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/croissant_S1.jpeg",
    "info": "Roll out puff pastry and cut into long triangles.",
  },
  {
    "assets": "assets/step/croissant_S2.jpeg",
    "info":
        "Preheat oven to 170°C (350°F). Evenly distribute hazelnut spread among puff pastry triangles, taking care to leave space around the edges.",
  },
  {
    "assets": "assets/step/croissant_S3.jpeg",
    "info": "Sprinkle almonds on top of hazelnut spread.",
  },
  {
    "assets": "assets/step/croissant_S4.jpeg",
    "info": "Roll the puff pastry forward, starting from the bottom.",
  },
  {
    "assets": "assets/step/croissant_S5.jpeg",
    "info":
        "Whisk egg. Place the croissants onto a baking paper-lined baking sheet and lightly brush with egg. Transfer to oven and bake for approx. 8 – 10 min. until golden brown. Enjoy for breakfast or as a afternoon treat.",
  },
];

final imageCroissant = [
  "assets/step/croissant_M.jpeg",
  "assets/step/croissant_S1.jpeg",
  "assets/step/croissant_S2.jpeg",
  "assets/step/croissant_S3.jpeg",
  "assets/step/croissant_S4.jpeg",
  "assets/step/croissant_S5.jpeg"
];
