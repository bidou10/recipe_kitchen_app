import 'package:flutter/material.dart';

class koreanNoodle extends StatelessWidget {
  const koreanNoodle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jaengban guksu (Korean Noodle)'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/koreanNoodle_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Jaengban guksu',
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
              'Ingredient List: \n\n[Step 1] :½ cucumber ½ carrot ½ tomato ¼ head iceberg lettuce 4 radishes 1 apples ½ onion 1 cloves garlic ½ tsp ginger\n\n[Step 2] :150 g soba noodles 1 eggs\n\n [Step 3] :½ tsp Korean chili flakes 1 tbsp gochujang 1 tbsp rice vinegar ½ tbsp soy sauce 1 tsp sugar salt \n\n [Step 4] :ice cubes (for serving) sesame seed (for garnish) ½ tbsp toasted sesame oil (for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board, knife \n\n Step 2 :pot, sieve \n\n Step 3 :food processor,fine sieve,bowl (small) \n\n Step 4 :none',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageKoreanNoodle.length,
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
    "assets": "assets/step/koreanNoodle_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/koreanNoodle_S1.jpeg",
    "info":
        "Julienne cucumber and carrots. Slice tomato and shred iceberg lettuce into thin strips. Thinly slice the radishes. Halve and core the apples. Julienne half of the apples and set the other half aside for the sauce (you can put the apples in water to prevent browning). Peel onion, garlic and ginger.",
  },
  {
    "assets": "assets/step/koreanNoodle_S2.jpeg",
    "info":
        "Cook soba noodles according to package instructions. Once the soba noodles are cooked, strain and rinse them with cold water until they are cool. Set aside. Boil the eggs for approx. 6 min. Remove them from the pot and let cool. Peel the eggs, then quarter or halve each.",
  },
  {
    "assets": "assets/step/koreanNoodle_S3.jpeg",
    "info":
        "In a food processor, puree half of the apple, onion, garlic and ginger (add 2 tbsp water if it’s too dry). Strain through a fine sieve and collect the juice. Combine the juice with Korean chili flakes, gochujang, rice vinegar, soy sauce, and sugar. Season with salt. Mix to combine.",
  },
  {
    "assets": "assets/step/koreanNoodle_S4.jpeg",
    "info":
        "Before serving, combine the sauce with some ice cubes. Place a nest of noodles in the middle of a big serving bowl or plate, and arrange the salad ingredients around the edge. Place eggs on top and garnish with sesame seeds and a drizzle of toasted sesame oil. Serve with the spicy sauce, or pour it over the top. Enjoy!",
  },
];

final imageKoreanNoodle = [
  "assets/step/koreanNoodle_M.jpeg",
  "assets/step/koreanNoodle_S1.jpeg",
  "assets/step/koreanNoodle_S2.jpeg",
  "assets/step/koreanNoodle_S3.jpeg",
  "assets/step/koreanNoodle_S4.jpeg",
];
