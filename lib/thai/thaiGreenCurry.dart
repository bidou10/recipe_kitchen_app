import 'package:flutter/material.dart';

class thaiGreenCurry extends StatelessWidget {
  const thaiGreenCurry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thai green curry shrimp'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/thaiGreenCurry_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Thai green curry shrimp',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Ingredient List: \n\n[Step 1]:3 tsp mustard seeds 1 tsp cumin 20 g ginger 2 cloves garlic 15 g cilantro 3 tsp turmeric 1 chili pepper  \n\n [Step 2] : 1 eggplant 200 g spinach 200 g bok choy \n\n [Step 3] :  oil for frying\n\n [Step 4] :none \n\n [step 5] :400 ml coconut milk 2 stalks lemon grass 150 g soybean sprouts\n\n [Step 6] :300 g shrimp 300 ml vegetable stock \n\n [Step 7] :2 limes, 5 g cilantro \n\n [Step 8] :salt, pepper, rice to serve',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :food processor\n\n Step 2 :cutting board,knife \n\n Step 3 :cooking spoon,large pot or wok \n\n Step 4 :cooking spoon \n\n Step 5 :cooking spoon\n\n Step 6 :cooking spoon \n\n Step 7 : cutting board,knife\n\n Step 8 :cooking spoon',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageThaiGreenCurry.length,
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
    "assets": "assets/step/thaiGreenCurry_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/thaiGreenCurry_S1.jpeg",
    "info":
        "Puree mustard seeds, cumin, ginger, garlic, cilantro, turmeric, and chili pepper in a food processor until an even consistency is achieved.",
  },
  {
    "assets": "assets/step/thaiGreenCurry_S2.jpeg",
    "info":
        "Cut eggplant into cubes (approx. 1 cm x 1 cm). Slice spinach and bok choy.",
  },
  {
    "assets": "assets/step/thaiGreenCurry_S3.jpeg",
    "info":
        "Add vegetable oil to your hot pan and fry cubed eggplant for approx. 8 – 10 min. until well-browned and softened.",
  },
  {
    "assets": "assets/step/thaiGreenCurry_S4.jpeg",
    "info":
        "Add prepared curry paste and fry for approx. 2 – 3 min. to build intense flavor.",
  },
  {
    "assets": "assets/step/thaiGreenCurry_S5.jpeg",
    "info":
        "Add coconut milk, lemon grass, bok choy, and soybean sprouts. Allow sauce to reduce over medium-high heat until slightly thickened. Stir occasionally.",
  },
  {
    "assets": "assets/step/thaiGreenCurry_S6.jpeg",
    "info":
        "Add vegetable stock and bring to a boil. Add shrimp and cook for approx. 4 – 5 min. on medium-high heat until they are opaque throughout.",
  },
  {
    "assets": "assets/step/thaiGreenCurry_S7.jpeg",
    "info":
        "In the meantime, cut limes into wedges and pick cilantro leaves from sprig.",
  },
  {
    "assets": "assets/step/thaiGreenCurry_S8.jpeg",
    "info":
        "Now, add spinach to the curry and simmer for approx. 2 – 3 min. until wilted. Season to taste with salt and pepper. Serve on some rice topped with lime and cilantro leaves.",
  },
];

final imageThaiGreenCurry = [
  "assets/step/thaiGreenCurry_M.jpeg",
  "assets/step/thaiGreenCurry_S1.jpeg",
  "assets/step/thaiGreenCurry_S2.jpeg",
  "assets/step/thaiGreenCurry_S3.jpeg",
  "assets/step/thaiGreenCurry_S4.jpeg",
  "assets/step/thaiGreenCurry_S5.jpeg",
  "assets/step/thaiGreenCurry_S6.jpeg",
  "assets/step/thaiGreenCurry_S7.jpeg",
  "assets/step/thaiGreenCurry_S8.jpeg"
];
