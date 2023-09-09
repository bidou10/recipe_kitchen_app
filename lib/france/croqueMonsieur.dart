import 'package:flutter/material.dart';

class croqueMonsieur extends StatelessWidget {
  const croqueMonsieur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Croque Monsieur'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/CroqueMonsieur_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Croque Monsieur',
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
              'Ingredient List: \n\n[Step 1] :2 slices toast 2 tsp Dijon mustard 2 slices ham 2 slices sliced cheese 50 ml sauce Mornay\n\n[Step 2] :2 slices toast 50 ml sauce Mornay 75 g hard cheese\n\n ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:baking sheet,oven,parchment paper \n\n Step 2 :fine grater \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imagecroqueMonsieur.length,
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
    "assets": "assets/step/CroqueMonsieur_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/CroqueMonsieur_S1.jpeg",
    "info":
        "Preheat oven to 200°C/390°F. Place half of toasts on a parchment-lined baking sheet.Spread an even layer of mustard over them . Follow up with a slice of ham, a slice of cheese, and an even layer of part of the sauce Mornay.",
  },
  {
    "assets": "assets/step/CroqueMonsieur_S2.jpeg",
    "info":
        "Top with remaining toast. Spread an even amount of remainder of sauce Mornay on top of each croque monsieur and then grate hard cheese on top. Place in preheated oven at 200°C/390°F for approx. 5 – 10 min. until cheese is golden and melted. Enjoy!",
  },
];

final imagecroqueMonsieur = [
  "assets/step/CroqueMonsieur_M.jpeg",
  "assets/step/CroqueMonsieur_S1.jpeg",
  "assets/step/CroqueMonsieur_S2.jpeg",
];
