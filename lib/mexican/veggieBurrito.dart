import 'package:flutter/material.dart';

class VeggieBurrito extends StatelessWidget {
  const VeggieBurrito({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Veggie Burrito'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/VeggieBurrito_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Veggie Burrito',
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
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Ingredient List: \n\n Step 1 :150 g basmati rice salt pepper 1 bay leaf 280 ml water 1 tbsp olive oil \n\n Step 2 :400 g canned black beans 1 red onion 1 clove garlic 1 tbsp olive oil 1 tsp Kitchen Stories Viva la Spice seasoning (optional) ½ tsp ground cumin ¼ tsp smoked paprika powder salt pepp \n\n Step 3 :1 avocado 1 lime 175 g canned sweet corn 1 tomato ½ red bell pepper ½ red onion 1 tbsp olive oil \n\n Step 4 :15 g cilantro 1 lime hot sauce (for serving) sour cream dip (for serving) tortilla chips (for serving) ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items List: \n\n[Step 1] :pot (small, with lid)\n\n [Step 2] :sieve,knife,cutting board,pot (small)cooking spoon,Viva la Spice seasoning \n\n [Step 3] :2 bowls (small)sieve\n\n [Step 4]:fork \n\n ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
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
    "assets": "assets/step/VeggieBurrito_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/VeggieBurrito_S1.jpeg",
    "info":
        "Add the rice to a small pot, set over medium heat. Dry-toast it briefly (approx. 1 min) stirring constantly. Add salt, pepper, bay leaf, water, and a drizzle of olive oil to the rice. Bring to a boil on high heat, then put a lid on, reduce to low heat and let cook for approx. 12 min. Remove from heat and let the rice continue to steam with the lid on until serving.",
  },
  {
    "assets": "assets/step/VeggieBurrito_S2.jpeg",
    "info":
        "Drain the black beans and reserve the liquid. Finely dice red onion and garlic. Heat some olive oil over medium-high heat in a pot and add half of the onion, cook until translucent, then add the garlic and fry until fragrant. Add the beans, a few tablespoons of the bean liquid, cumin, hot smoked paprika, or our VIVA LA SPICE seasoning (if using). Season with salt and pepper. Let simmer until creamy, breaking some beans up with your cooking spoon, and adding more bean liquid as needed. Remove from heat and set aside.",
  },
  {
    "assets": "assets/step/VeggieBurrito_S3.jpeg",
    "info":
        "Make a quick guacamole by mashing the avocado with some lime juice to taste, then season with salt and pepper. Set aside. Drain corn, then dice tomato and deseeded red bell pepper. In a small bowl, mix together corn, tomatoes, bell pepper, and remaining red onion. Season to taste with olive oil, lime juice, salt, and pepper.",
  },
  {
    "assets": "assets/step/VeggieBurrito_S4.jpeg",
    "info":
        "Before serving, finely chop cilantro and stir it through the rice, fluffing with a fork, and adding lime juice to taste. Add rice to plates and spoon servings of the black beans, guacamole and salad around it. Top with some extra lime, coriander, a drizzle of hot sauce, a dollop of sour cream, and some crunchy tortilla chips. Enjoy!",
  },
];

final imageBurrito = [
  "assets/step/VeggieBurrito_M.jpeg",
  "assets/step/VeggieBurrito_S1.jpeg",
  "assets/step/VeggieBurrito_S2.jpeg",
  "assets/step/VeggieBurrito_S3.jpeg",
  "assets/step/VeggieBurrito_S4.jpeg"
];
