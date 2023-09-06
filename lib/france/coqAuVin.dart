import 'package:flutter/material.dart';

class coqAuVin extends StatelessWidget {
  const coqAuVin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coq Au Vin'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/CoqAuVin_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Coq Au Vin',
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
              'Ingredient List: \n\n[Step 1] :3 strips smoked bacon 100 g button mushrooms 5 shallots 200 g potatoes\n\n[Step 2] :1 tbsp unsalted butter salt pepper\n\n [step 3] :2 chicken legs salt 1 tbsp tomato paste\n\n [step 4] :200 ml red wine \n\n [Step 5] :200 ml red wine 350 ml chicken stock 1 bay leaf 1 sprig rosemary 2 sprigs thyme salt pepper \n\n [Step 6] :1 tbsp starch ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife \n\n Step 2 :frying pan (large, with lid)cooking spoon \n\n Step 3 :tongs \n\n Step 4:none \n\n Step 5 :Meat Lover seasoning \n\n Step 6 :none',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageCoqAuVin.length,
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
    "assets": "assets/step/CoqAuVin_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/CoqAuVin_S1.jpeg",
    "info":
        "Slice bacon into fine strips, trim and halve mushrooms, quarter shallots, and roughly dice potatoes.",
  },
  {
    "assets": "assets/step/CoqAuVin_S2.jpeg",
    "info":
        "Melt butter in a sauce pan and sauté bacon, mushrooms, shallots and potatoes, lightly season with salt and pepper. Then remove from pan and put aside.",
  },
  {
    "assets": "assets/step/CoqAuVin_S3.jpeg",
    "info":
        "Salt chicken legs and fry in the same pan. Once the meat has colored on both sides, add tomato paste and brown together.",
  },
  {
    "assets": "assets/step/CoqAuVin_S4.jpeg",
    "info":
        "Next, deglaze pan with half of red wine and boil for approx. 5 – 7 min., until the alcohol evaporates. Now, put the cooked vegetables back into the pan.",
  },
  {
    "assets": "assets/step/CoqAuVin_S5.jpeg",
    "info":
        "Pour in remaining red wine and chicken stock. Add bay leaf, thyme, and rosemary and let simmer for approx. 30 – 35 min. with closed lid on medium heat.",
  },
  {
    "assets": "assets/step/CoqAuVin_S6.jpeg",
    "info":
        "Next, thicken the sauce with cornstarch. Add salt and pepper to taste. Serve in a deep dish or casserole dish.",
  },
];

final imageCoqAuVin = [
  "assets/step/CoqAuVin_M.jpeg",
  "assets/step/CoqAuVin_S1.jpeg",
  "assets/step/CoqAuVin_S2.jpeg",
  "assets/step/CoqAuVin_S3.jpeg",
  "assets/step/CoqAuVin_S4.jpeg",
  "assets/step/CoqAuVin_S5.jpeg",
  "assets/step/CoqAuVin_S6.jpeg",
];
