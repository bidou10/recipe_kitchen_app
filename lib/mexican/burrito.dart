import 'package:flutter/material.dart';

class Burrito extends StatelessWidget {
  const Burrito({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burrito'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/Burrito_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Burrito',
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
              'Ingredient List: \n\n[Step 1] :½ red bell pepper 1 red onion 10 g chives \n\n [Step 2] :20 g cheddar cheese \n\n [Step 3] :5 eggs Tabasco \n\n [Step 4]:1 tbsp butter ,½ tsp Kitchen Stories Viva la Spice seasoning \n\n [Step 5]:none \n\n [Step 6]:none \n\n',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife \n\n Step 2 :box grater \n\n Step 3 :bowl (large) \n\n Step 4 :frying pan,cooking spoon,Viva la Spice seasoning\n\n Step 5 :none \n\n Step 6 :2 flour tortillas',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageBurrito.length,
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
    "assets": "assets/step/Burrito_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/Burrito_S1.jpeg",
    "info":
        "Finely dice bell pepper. Thinly slice onion into half rings. Finely chop chives.",
  },
  {
    "assets": "assets/step/Burrito_S2.jpeg",
    "info": "Using a box grater, roughly grate cheese.",
  },
  {
    "assets": "assets/step/Burrito_S3.jpeg",
    "info":
        "In a large bowl, beat together a little bit of Tabasco sauce with the eggs.",
  },
  {
    "assets": "assets/step/Burrito_S4.jpeg",
    "info":
        "Heat up butter in a frying pan and sauté onions over medium heat for approx. 1 – 2 minutes. Then, add the bell pepper, VIVA LA SPICE seasoning (if using), and continue to sauté for an additional 2 – 3 min.",
  },
  {
    "assets": "assets/step/Burrito_S5.jpeg",
    "info":
        "Add eggs to the pan and continue to sauté, stirring occasionally, for approx. 3 – 5 min. Then, add the cheese and stir until melted.",
  },
  {
    "assets": "assets/step/Burrito_S6.jpeg",
    "info":
        "Place some of the eggs in the middle of the tortilla, taking care not to overfill. Sprinkle some chives on top. Fold tortilla in from the sides. Then, roll forward from bottom with thumbs until burrito is tightly rolled. Enjoy!",
  },
];

final imageBurrito = [
  "assets/step/Burrito_M.jpeg",
  "assets/step/Burrito_S1.jpeg",
  "assets/step/Burrito_S2.jpeg",
  "assets/step/Burrito_S3.jpeg",
  "assets/step/Burrito_S4.jpeg",
  "assets/step/Burrito_S5.jpeg",
  "assets/step/Burrito_S6.jpeg"
];
