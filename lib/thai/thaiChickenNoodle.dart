import 'package:flutter/material.dart';

class thaiChickenNoodle extends StatelessWidget {
  const thaiChickenNoodle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thai Chicken Noodles soup'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/thai_Chicken_noodle_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Thai chicken noodle soup',
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
              'Ingredient List: \n\n[Step 1]: 1 stalk lemongrass ,1 clove garlic ,20 g ginger \n\n [Step 2] : 1 tbsp peanut oil ,2 tbsp soy sauce ,1 tbsp oyster sauce ,350 ml chicken stock ,2 kaffir lime leaves \n\n [Step 3] :2 stalks celery ,1 carrot ,150 g chicken breast \n\n [Step 4] :none \n\n [step 5] :100 g rice noodles  \n\n [Step 6] : 2 green onions ,100 g enoki mushrooms ,10 g cilantro \n\n [Step 7] : none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :fine grater,cutting board,knife \n\n Step 2 :large sauce pan,cooking spoon \n\n Step 3 :cutting board,knife \n\n Step 4 : none \n\n Step 5 :kettle (optional), large bowl \n\n Step 6 :cutting board, knife \n\n Step 7 :colander',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageThaiChickenNoodle.length,
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
    "assets": "assets/step/thai_Chicken_noodle_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/thai_Chicken_noodle_S1.jpeg",
    "info":
        "Lightly smash lemon grass. Peel ginger and grate finely. Peel garlic and remove the green sprout if necessary and chop finely.",
  },
  {
    "assets": "assets/step/thai_Chicken_noodle_S2.jpeg",
    "info":
        "Heat up peanut oil and add garlic and ginger to roast. Add soy sauce and oyster sauce and fill with chicken stock. Add lemon grass and kaffir lime leaves and bring everything to a boil.",
  },
  {
    "assets": "assets/step/thai_Chicken_noodle_S3.jpeg",
    "info":
        "Cut celery into sticks and the carrot into walnut-sized pieces. Cut the chicken breast into pieces twice as large.",
  },
  {
    "assets": "assets/step/thai_Chicken_noodle_S4.jpeg",
    "info":
        "Next, add the celery, carrots, and chicken to the stock and cook on low heat for approx. 5 - 10 min. until fully cooked.",
  },
  {
    "assets": "assets/step/thai_Chicken_noodle_S5.jpeg",
    "info":
        "Meanwhile, soak rice noodles in hot water, according to the package instructions.",
  },
  {
    "assets": "assets/step/thai_Chicken_noodle_S6.jpeg",
    "info":
        "Cut green onions into fine rings. Then, cut the stalks off enoki mushrooms and finely chop cilantro.",
  },
  {
    "assets": "assets/step/thai_Chicken_noodle_S7.jpeg",
    "info":
        "Drain rice noodles and add to the soup, along with the green onions, enoki mushrooms, and cilantro. Serve immediately, so that the mushrooms keep their bite and the cilantro keeps its color.",
  },
];

final imageThaiChickenNoodle = [
  "assets/step/thai_Chicken_noodle_M.jpeg",
  "assets/step/thai_Chicken_noodle_S1.jpeg",
  "assets/step/thai_Chicken_noodle_S2.jpeg",
  "assets/step/thai_Chicken_noodle_S3.jpeg",
  "assets/step/thai_Chicken_noodle_S4.jpeg",
  "assets/step/thai_Chicken_noodle_S5.jpeg",
  "assets/step/thai_Chicken_noodle_S6.jpeg",
  "assets/step/thai_Chicken_noodle_S7.jpeg"
];
