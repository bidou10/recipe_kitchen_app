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
              'assets/step/tacosVegan_M.jpeg',
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
              'Ingredient List: \n\n[Step 1] :1 \n\n [Step 2] : \n\n [Step 3] : \n\n [Step 4]: ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1: \n\n Step 2 : \n\n Step 3 : \n\n Step 4 : ',
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
    "assets": "assets/step/tacosVegan_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/tacosVegan_S1.jpeg",
    "info": "",
  },
  {
    "assets": "assets/step/tacosVegan_S2.jpeg",
    "info": "",
  },
  {
    "assets": "assets/step/tacosVegan_S3.jpeg",
    "info": "",
  },
  {
    "assets": "assets/step/tacosVegan_S4.jpeg",
    "info": "",
  },
];

final imageBurrito = [
  "assets/step/tacosVegan_M.jpeg",
  "assets/step/tacosVegan_S1.jpeg",
  "assets/step/tacosVegan_S2.jpeg",
  "assets/step/tacosVegan_S3.jpeg",
  "assets/step/tacosVegan_S4.jpeg"
];
