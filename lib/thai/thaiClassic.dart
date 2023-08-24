import 'package:flutter/material.dart';

class ThaiClassic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thai stir fried noodles'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/thai_stir_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Thai Stir fried noodles',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Ingredient List: \n\n[Step 1] : 300 g rice noodles ,7 g ginger, 2 cloves garlic, 1 chili, 400 g chicken legs (boneless) ,150 bok choy ,4 tbsp dark soy sauce, 4 tbsp sweet soy sauce, 2 tbsp oyster sauce ,1 tbsp rice vinegar ,1 tsp sugar ,\n\n [Step 2] : 2 tbsp vegetable oil 2 eggs\n\n [Step 3] : sesame oil (for serving), sesame seed (for serving) ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 : pot ,colander ,cutting board ,knife ,bowl \n\n Step 2 : wok ,spatula.',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageThaiClassic.length,
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
                      style: TextStyle(fontSize: 20, letterSpacing: 0.6),
                    ),
                    subtitle: Text(
                      '${product[index]['info']},',
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.7,
                          fontWeight: FontWeight.w600),
                    ),
                    // trailing: SizedBox(
                    //   height: 110,
                    //   width: 110,
                    //   child: Image.asset(
                    //     imageThaiClassic[index],
                    //     fit: BoxFit.cover,
                    //   ),
                    // ), je garde le code au cas ou , j'ai envie de mettre les images sur la droite plutot que la gauche
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

final imageThaiClassic = [
  "assets/step/thai_stir_M.jpeg",
  "assets/step/thai_stir_S1.jpeg",
  "assets/step/thai_stir_S2.jpeg",
  "assets/step/thai_stir_S3.jpeg",
];

const product = [
  {
    "assets": "assets/step/thai_stir_M.jpeg",
    "info": "Final photo , Enjoy your meal",
  },
  {
    "assets": "assets/step/thai_stir_S1.jpeg",
    "info":
        "Prepare noodles according to package instructions, drain under running cold water, and set aside. Mince ginger and garlic. Slice chili pepper thinly. Cut chicken into bite-sized pieces. Separate bok choy leaves and stalks. In a measuring cup, mix dark and sweet soy sauces, oyster sauce, rice vinegar, and sugar.",
  },
  {
    "assets": "assets/step/thai_stir_S2.jpeg",
    "info":
        "Heat wok, add oil, and fry ginger and garlic, stirring constantly. Add bok choy stems and briefly stir-fry while tossing. Add chicken and fry for approx 5 min. Move everything to one side of the pan, break the eggs into the wok and scramble vigorously. Before they set, add the noodles and mix well.",
  },
  {
    "assets": "assets/step/thai_stir_S3.jpeg",
    "info":
        "Add sauce, sliced chili pepper, and bok choy leaves to the wok and toss well, continuing to fry approx. 2 min. until well combined. Serve with sesame seeds and a little sesame oil."
  },
];
