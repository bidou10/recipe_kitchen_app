import 'package:flutter/material.dart';

class macarons extends StatelessWidget {
  const macarons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lemon pistachio Macarons buttercream'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/Macarons_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Lemon pistachio Macarons buttercream',
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
              'Ingredient List: \n\n[Step 1] :24 g egg whites 56⅔ g confectioners sugar ⅛ tsp green food coloring 16⅔ g almonds\n\n[Step 2] :none\n\n [step 3] :none \n\n [step 4] :3⅓ pistachios\n\n [step 5] :50 g butter 25 g confectioners sugar 5 g marzipan ⅔ lemons ⅓ tbsp lemon marmalade\n\n [step 6] :none\n\n [step 7] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:sieve,standing mixer or handheld mixer with beaters,spatula \n\n Step 2 :piping bag\n\n Step 3 :baking sheet,oven,silicone baking mat \n\n Step 4 :cutting board,knife  \n\n Step 5 :standing mixer or handheld mixer with beaters\n\n Step 6 :piping bag\n\n Step 7 :none \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageMacarons.length,
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
    "assets": "assets/step/miniQuiche_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/miniQuiche_S1.jpeg",
    "info":
        "In a standing mixer, beat egg whites until foamy. Add confectioner’s sugar and food coloring and continue to beat until stiff white peaks form. Sift ground almonds through a sieve into egg whites and gently fold in by hand.",
  },
  {
    "assets": "assets/step/miniQuiche_S2.jpeg",
    "info": "Transfer batter to piping bag.",
  },
  {
    "assets": "assets/step/miniQuiche_S3.jpeg",
    "info":
        "Preheat oven to 140°C/285°F. Line a baking sheet with a silicone baking mat. Pipe batter onto baking sheet to form poker chip-sized rounds, taking care to leave space between each. Gently tap baking sheet on kitchen counter to release air bubbles. Allow to sit at room temperature for approx. 30 min. Bake in a preheated oven at 140°C/285°F for approx. 10 – 12 min. Remove from oven and allow to cool.",
  },
  {
    "assets": "assets/step/miniQuiche_S4.jpeg",
    "info": "Finely chop pistachios.",
  },
  {
    "assets": "assets/step/miniQuiche_S5.jpeg",
    "info":
        "In a standing mixer, beat together butter and confectioner’s sugar until butter is white in color. Add marzipan, lemon zest, chopped pistachios, lemon marmalade and continue to beat until creamy and smooth.",
  },
  {
    "assets": "assets/step/miniQuiche_S6.jpeg",
    "info": "Transfer lemon buttercream to a piping bag.",
  },
  {
    "assets": "assets/step/miniQuiche_S7.jpeg",
    "info":
        "Pipe approx. 1 tsp of buttercream onto the bottom half of a macaron. Place another half on top and lightly press. Repeat until all macarons are assembled. Enjoy with afternoon tea or give as a thoughtful gift!",
  },
];

final imageMacarons = [
  "assets/step/miniQuiche_M.jpeg",
  "assets/step/miniQuiche_S1.jpeg",
  "assets/step/miniQuiche_S2.jpeg",
  "assets/step/miniQuiche_S3.jpeg",
  "assets/step/miniQuiche_S4.jpeg",
  "assets/step/miniQuiche_S5.jpeg",
  "assets/step/miniQuiche_S6.jpeg",
  "assets/step/miniQuiche_S7.jpeg",
];
