import 'package:flutter/material.dart';

class tarteTatin extends StatelessWidget {
  const tarteTatin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarte tartin'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/TarteTatin_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Tarte tatin',
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
              'Ingredient List: \n\n[Step 1] :60 g sugar 50 g butter ½ vanilla bean\n\n[Step 2] :none\n\n [Step 3] :1 apple\n\n [Step 4] :50 g puff pastry sheets \n\n [Step 5] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1: wooden spoon,pot (small) \n\n Step 2 :ovenproof pan \n\n Step 3 :cutting board,knife \n\n Step 4 :none \n\n Step 5 :none',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageTarteTatin.length,
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
    "assets": "assets/step/TarteTatin_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/TarteTatin_S1.jpeg",
    "info":
        "Cook sugar in small saucepan over medium heat until it dissolves and turns golden brown. Remove from heat and stir in butter and vanilla bean seeds.",
  },
  {
    "assets": "assets/step/TarteTatin_S2.jpeg",
    "info": "Pour into ovenproof pan.",
  },
  {
    "assets": "assets/step/TarteTatin_S3.jpeg",
    "info":
        "Preheat oven to 180°C/360°F. Peel, core, and cut apple into medium-thick slices. Arrange in concentric circles over caramel.",
  },
  {
    "assets": "assets/step/TarteTatin_S4.jpeg",
    "info":
        "Cut out a circle of puff pastry large enough to cover apples. Score circle all over with the tip of a sharp knife. Place pastry over apples, pressing it down gently to cover.",
  },
  {
    "assets": "assets/step/TarteTatin_S5.jpeg",
    "info":
        "Transfer pan to oven and bake for approx. 20 - 23 min., or until puff pastry turns golden brown and caramel is bubbling. Turn taste out onto a serving plate and enjoy with a scoop of ice cream of simply on its own!",
  },
];

final imageTarteTatin = [
  "assets/step/TarteTatin_M.jpeg",
  "assets/step/TarteTatin_S1.jpeg",
  "assets/step/TarteTatin_S2.jpeg",
  "assets/step/TarteTatin_S3.jpeg",
  "assets/step/TarteTatin_S4.jpeg",
  "assets/step/TarteTatin_S5.jpeg",
];
