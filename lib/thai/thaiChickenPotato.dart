import 'package:flutter/material.dart';

class thaiChickenPotato extends StatelessWidget {
  const thaiChickenPotato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thai chicken sweet potato'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/thaiChickenPotato_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Thai chicken with sweet potato',
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
              'Ingredient List: \n\n[Step 1] : ⅓ onion, ⅓ tbsp coconut oi,l 183⅓ g chicken breasts ,salt ,pepper \n\n [Step 2] :none \n\n [Step 3] :⅓ sweet potato ,133⅓ ml coconut milk ,40 ml water ,1 tbsp Thai red curry paste ,½ tsp light brown sugar ,⅛ tsp chicken flavor bouillon (powdered) \n\n [Step 4]:8⅓ g cilantro, ⅓ Thai chili pepper for serving, 200 g jasmine rice for serving, purple cabbage for serving, fish sauce for serving lime for serving',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :large frying pan with lid,cooking spoon,cutting board, knife,large mixing bowl \n\n Step 2 :none \n\n Step 3 :none \n\n Step 4 : cutting board, knife',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageThaiChickenPotato.length,
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

const product = [
  {
    "assets": "assets/step/thaiChickenPotato_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/thaiChickenPotato_S1.jpeg",
    "info":
        "Slice onion. Dice chicken and season with salt and pepper. Heat coconut oil in large skillet over medium-high heat, then add chicken. Cook, stirring frequently, for approx. 5 – 7 min. or until browned and cooked through. Transfer to a bowl.",
  },
  {
    "assets": "assets/step/thaiChickenPotato_S2.jpeg",
    "info":
        "Add sliced onion to the same frying pan; sauté, stirring frequently, until golden brown.",
  },
  {
    "assets": "assets/step/thaiChickenPotato_S3.jpeg",
    "info":
        "Add sweet potato, coconut milk, water, curry paste, brown sugar, and bouillon to pan. Stir well, scraping up brown bits from bottom of pan. Bring to a boil, then reduce heat to low. Cover and cook for approx. 10 min. or until potatoes are fork tender..",
  },
  {
    "assets": "assets/step/thaiChickenPotato_S4.jpeg",
    "info":
        "Meanwhile, chop cilantro and chili and slice cabbage into strips. Cut lime into wedges. Stir in chicken and accumulated juices, along with fish sauce to taste. Cook until heated through. Divide rice between bowls and top with chicken mixture, cilantro, chili, and cabbage. Serve with lime wedges. Enjoy!",
  },
];

final imageThaiChickenPotato = [
  "assets/step/thaiChickenPotato_M.jpeg",
  "assets/step/thaiChickenPotato_S1.jpeg",
  "assets/step/thaiChickenPotato_S2.jpeg",
  "assets/step/thaiChickenPotato_S3.jpeg",
  "assets/step/thaiChickenPotato_S4.jpeg"
];
