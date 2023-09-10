import 'package:flutter/material.dart';

class jumeokbap extends StatelessWidget {
  const jumeokbap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jumeokbap'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/Jumeokbap_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Jumeokbap',
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
              'Ingredient List: \n\n[Step 1] :¼ cucumber 1 avocado 100 g salmon fillets 1 dried seaweed sheet\n\n[Step 2] :600 g sushi rice (cooked) \n\n [step 3] :50 g white sesame seeds 50 g black sesame seeds 1 scallion 2 tbsp mayonnaise 2 tbsp teriyaki sauce wasabi paste (for serving) soy sauce (for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:knife,cutting board,cooking spoon,bowl \n\n Step 2 :none \n\n Step 3 :plate \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageJumeokbap.length,
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
    "assets": "assets/step/Jumeokbap_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/Jumeokbap_S1.jpeg",
    "info":
        "Halve cucumber lengthwise, scrape out core and cut cucumber halves into approx. 1 cm/0.4 in. small cubes. Halve avocado, remove pit, scrape out flesh and cut into approx. 1 cm/0.4 in. cubes. Cut salmon into approx. 1 cm/0.4 in. cubes as well. Finely chop seaweed sheet, like confetti. Mix salmon cubes, cucumber and avocado together with the chopped seaweed in a bowl.",
  },
  {
    "assets": "assets/step/Jumeokbap_S2.jpeg",
    "info":
        "With wet hands, take a small handful, approx. the size of an egg, of the cooled rice and form into a ball, then press into the center with your thumb to create a small crater. Pour in a little of the filling, approx. 1 tsp, close the ball tightly and repeat until the rice is used up.",
  },
  {
    "assets": "assets/step/Jumeokbap_S3.jpeg",
    "info":
        "Put the sesame seeds on a flat plate and roll the finished balls around to coat them. Cut the scallion into fine rings. Arrange sushi balls on a plate and garnish with mayonnaise, teriyaki sauce and spring onion rings as desired. Serve with soy sauce and wasabi.",
  },
];

final imageJumeokbap = [
  "assets/step/Jumeokbap_M.jpeg",
  "assets/step/Jumeokbap_S1.jpeg",
  "assets/step/Jumeokbap_S2.jpeg",
  "assets/step/Jumeokbap_S3.jpeg",
];
