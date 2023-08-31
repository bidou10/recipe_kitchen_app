import 'package:flutter/material.dart';

class MexicanPastaSalad extends StatelessWidget {
  const MexicanPastaSalad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mexican Pasta Salad'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/MexicanPastaSalad_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Mexican Pasta Salad',
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
              'Ingredient List: \n\n Step 1 :250 g pasta, salt, olive oil \n\n Step 2 :2 scallions 250 g cherry tomatoes 425 g canned sweet corn 1 tbsp oil 4 slices bacon \n\n Step 3 :1 tbsp Kitchen Stories Viva la Spice seasoning alternative to Viva la Spice: smoked paprika, chilli, oregano and cumin \n\n Step 4 :200 g canned black beans 150 g sour cream ½ lime 100 g feta cheese 40 g cilantro (for garnish) salt pepper ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items List: \n\n[Step 1] :pot (large),colander,cooking spoon\n\n [Step 2] :knife,cutting board,sieve,frying pan (large)\n\n [Step 3] :Viva la Spice seasoning\n\n [Step 4]:none \n\n ',
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
                imageMexicanPastaSalad.length,
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
    "assets": "assets/step/MexicanPastaSalad_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/MexicanPastaSalad_S1.jpeg",
    "info":
        "Bring a large pot of generously salted water to a boil. Add pasta and cook according to package directions. At the end of the cooking time, drain pasta. Place pasta in a large bowl and mix with a little olive oil to prevent it sticking together. Set aside to cool.",
  },
  {
    "assets": "assets/step/MexicanPastaSalad_S2.jpeg",
    "info":
        "While the pasta is cooking, cut the white and green parts of the scallions separately into fine rings. Halve cherry tomatoes. Drain corn through a sieve and rinse under running water. Heat oil in a large pan. Add bacon and fry over medium-high heat until crisp. Remove from pan, cool and chop when cool enough to handle.",
  },
  {
    "assets": "assets/step/MexicanPastaSalad_S3.jpeg",
    "info":
        "Remove all but approx. 2 tablespoons of the excess fat from the pan. Increase heat again and add the drained corn. Fry for approx. 5–6 min. stirring occasionally, until the kernels turn golden brown. Remove some of the corn kernels from the pan and set aside to garnish later. Add the scallion whites and VIVA LA SPICE seasoning, stir briefly until aromatic, then add the pan contents to the pasta.",
  },
  {
    "assets": "assets/step/MexicanPastaSalad_S4.jpeg",
    "info":
        "Drain black beans through a sieve and rinse under running water. Add tomatoes, black beans, bacon and sour cream to the pasta with a squeeze of lime juice. Stir well and season with salt and pepper to taste. Add feta by crumbling it with your hands and mix. Refrigerate for approx. 30–45 min. to cool it down. To serve, garnish with scallion greens, corn kernels and cilantro.",
  },
];

final imageMexicanPastaSalad = [
  "assets/step/MexicanPastaSalad_M.jpeg",
  "assets/step/MexicanPastaSalad_S1.jpeg",
  "assets/step/MexicanPastaSalad_S2.jpeg",
  "assets/step/MexicanPastaSalad_S3.jpeg",
  "assets/step/MexicanPastaSalad_S4.jpeg"
];
