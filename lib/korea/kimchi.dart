import 'package:flutter/material.dart';

class kimchi extends StatelessWidget {
  const kimchi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kimchi'),
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
              'Ingredient List: \n\n[Step 1] :1 onion 2 cloves garlic 10 g ginger 150 g kimchi 1 scallion\n\n[Step 2] : 2½ tbsp butter\n\n [Step 3] :vegetable oil (for frying) 2 eggs salt \n\n [Step 4] :150 g kimchi 3 tsp gochujang 400 g short grain rice (cooked) 2 tsp light soy sauce 1 tsp toasted sesame oil sesame seed (for garnish)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1: cutting board,knife\n\n Step 2: nonstick pan,spatula \n\n Step 3 :frying pan \n\n Step 4 :none \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageKimchi.length,
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
    "assets": "assets/step/kimchi_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/kimchi_S1.jpeg",
    "info":
        "Finely slice onion. Mince garlic and ginger. Slice kimchi into large strips, if using whole leaves. Finely slice scallion for serving.",
  },
  {
    "assets": "assets/step/kimchi_S2.jpeg",
    "info":
        "Add butter to a large, non-stick frying pan, set over medium-low heat, and let melt. Once melted, add onion, garlic, and ginger and fry gently, approx. 5 min., until soft.",
  },
  {
    "assets": "assets/step/kimchi_S3.jpeg",
    "info":
        "In the meantime, heat vegetable oil in another frying pan over medium heat. Crack in the eggs and season eggs with salt to taste. Continue frying until whites crisp on the edges and yolk is just set but runny in the center, or according to your preference.",
  },
  {
    "assets": "assets/step/kimchi_S4.jpeg",
    "info":
        "Add ¾ of the kimchi, plus a little of its juice to the pan with the onion, garlic, and ginger. Toss everything well to warm through. Next, add gochujang and stir until incorporated. Add the cooked rice, increase the heat to medium-high, and toss well to break up the rice. Add soy sauce and toasted sesame oil and toss well again. Serve kimchi fried rice family-style, straight from the pan, with the two eggs on top, remaining kimchi, scallions, and sesame seeds, if desired. Enjoy!",
  },
];

final imageKimchi = [
  "assets/step/kimchi_M.jpeg",
  "assets/step/kimchi_S1.jpeg",
  "assets/step/kimchi_S2.jpeg",
  "assets/step/kimchi_S3.jpeg",
  "assets/step/kimchi_S4.jpeg",
];
