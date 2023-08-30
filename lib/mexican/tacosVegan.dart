import 'package:flutter/material.dart';

class TacosVegan extends StatelessWidget {
  const TacosVegan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tacos Vegan with lime yogurt dip'),
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
              'Tacos Vegan',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            // Text(
            //   'Ingredient List: \n\n[Step 1] : \n\n [Step 2] : \n\n [Step 3] : \n\n [Step 4]: ',
            //   style: TextStyle(
            //     letterSpacing: 0.8,
            //     fontSize: 16.0,
            //   ),
            // ),
            // SizedBox(
            //   height: 8.0,
            // ),
            Text(
              'Items necessary: \n\n Step 1 :cutting board,knife,small mixing bowl \n\n Step 2 :fine grater,citrus press,small mixing bowl \n\n Step 3 :large frying pan,cutting board,knife \n\n Step 4 :none ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageTacosVegan.length,
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
    "info":
        "Halve tomatoes, remove seeds and finely dice. Peel and finely dice red onion. Finely chop cilantro. Add tomatoes, red onion and cilantro to a mixing bowl and stir to combine. Set aside.",
  },
  {
    "assets": "assets/step/tacosVegan_S2.jpeg",
    "info":
        "Add Greek jogurt, lime zest, lime juice and garlic powder to a small mixing bowl and stir to combine. Set aside.",
  },
  {
    "assets": "assets/step/tacosVegan_S3.jpeg",
    "info":
        "Heat vegetable oil in a large frying pan. Add vegetarian cutlets and fry from each side for approx. 2 – 3 min. Remove from pan and let cool down for 1 – 2 min., then slice each cutlet.",
  },
  {
    "assets": "assets/step/tacosVegan_S4.jpeg",
    "info":
        "Pit and slice avocado. Crumble feta cheese. Spread some salsa verde, avocado slices, sliced vegetarian cutlets, tomato-onion mixture, and crumbled feta cheese on each corn tortilla. Drizzle yogurt dip on top. Enjoy!",
  },
];

final imageTacosVegan = [
  "assets/step/tacosVegan_M.jpeg",
  "assets/step/tacosVegan_S1.jpeg",
  "assets/step/tacosVegan_S2.jpeg",
  "assets/step/tacosVegan_S3.jpeg",
  "assets/step/tacosVegan_S4.jpeg"
];
