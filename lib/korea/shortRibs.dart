import 'package:flutter/material.dart';

class shortRibs extends StatelessWidget {
  const shortRibs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Short Ribs'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/shortRibs_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              '',
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
              'Ingredient List: \n\n[Step 1] :300 g daikon radish 10 g ginger 2 tbsp mirin ¼ tsp salt 1 tbsp sugar 3 cloves garlic 150 ml soy sauce 75 ml red wine 2 tbsp honey 1 pinch black pepper 1 red onion\n\n[Step 2] :400 g short ribs vegetable oil for frying\n\n [step 3] :1 tbsp sesame oil 1 tsp sesame seeds for serving chili strings for serving',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife,grater,2 bowls (large) \n\n Step 2 :paper towels,cooking spoon,pot (with lid) \n\n Step 3 :none \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageShortRibs.length,
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
    "assets": "assets/step/shortRibs_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/shortRibs_S1.jpeg",
    "info":
        "Grate daikon radish and ginger and transfer to a large bowl. Add mirin, salt, and sugar. Stir to combine, then set aside. Mince garlic. In a second large bowl, mix soy sauce, red wine, honey, garlic, and black pepper. Roughly chop red onion and set aside.",
  },
  {
    "assets": "assets/step/shortRibs_S2.jpeg",
    "info":
        "Portion the meat and rinse under cold water, then pat dry with paper towels. Heat oil in a pot over medium-high heat and sauté the ribs on both sides. Remove ribs from pot and let drain on a paper towel-lined plate. Transfer ribs back to the pot, add the chopped red onion, and deglaze with garlic-soy sauce mixture. Mix thoroughly, scraping up the brown bits from the bottom of the pot. Cover the pot and bring to a boil over medium-high heat for approx. 25 min., then reduce heat to low and simmer, covered, for approx. 20 min.",
  },
  {
    "assets": "assets/step/shortRibs_S3.jpeg",
    "info":
        "Remove ribs from pot, season with sesame oil, and decorate with sesame seeds and chili strings. Serve with pickled daikon, and enjoy!",
  },
];

final imageShortRibs = [
  "assets/step/shortRibs_M.jpeg",
  "assets/step/shortRibs_S1.jpeg",
  "assets/step/shortRibs_S2.jpeg",
  "assets/step/shortRibs_S3.jpeg",
];
