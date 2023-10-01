import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class halloumi extends StatelessWidget {
  const halloumi({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halloumi'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/halloumi_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'halloumi',
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
              'Ingredient List: \n\n[Step 1] :250 g halloumi 200 g sweet potatoes 1 onion 15 g ginger 2 cloves garlic\n\n[Step 2] :vegetable oil 3 tsp Kitchen Stories Curry Power seasoning (optional) ½ tsp ground cumin ½ tsp ground turmeric 1 tsp ground coriander ½ tsp chili flakes\n\n [Step 3] :400 ml canned crushed tomatoes 250 ml coconut milk 150 ml water 100 g frozen peas 1 tsp garam masala salt pepper basmati rice (for serving) cilantro (for garnish ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife \n\n Step 2:nonstick pan,bowl (small),Curry Power seasoning \n\n Step 3 :none',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageChorizoPotato.length,
                (index) {
                  return InkWell(
                    onTap: () {
                      // Afficher l'image en plein écran avec l'app bar
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FullScreenPage(
                            imageAsset: product[index]['assets'] as String,
                            info: product[index]['info'] as String,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              product[index]['assets'] as String,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Step $index',
                                  style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 0.6,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '${product[index]['info']}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    letterSpacing: 0.7,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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

class FullScreenPage extends StatelessWidget {
  final String imageAsset;
  final String info;

  FullScreenPage({required this.imageAsset, required this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // App bar avec le bouton de retour
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Retour à l'écran précédent
            Navigator.of(context).pop();
          },
        ),
        title: Text('Full Screen Image'),
      ),
      body: FullScreenWidget(
        child: Image.asset(
          imageAsset,
          fit: BoxFit.cover,
        ),
        disposeLevel: DisposeLevel.High,
      ),
    );
  }
}

const product = [
  {
    "assets": "assets/step/halloumi_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/halloumi_S1.jpeg",
    "info":
        "Cut the halloumi into cubes or thick slices. Peel and cut sweet potato into small cubes, approx. 1.5 cm. Peel onion, cut in half, and slice finely. Peel and finely mince ginger. Peel, crush, and finely mince garlic",
  },
  {
    "assets": "assets/step/halloumi_S2.jpeg",
    "info":
        "In a deep non-sticking pan, heat 1–2 tbsp. of vegetable oil over medium to high heat. Add halloumi and fry until all sides are golden brown. Remove and set aside. In the same pan, add more oil if needed, add the onion and fry until translucent. Add minced ginger and garlic. Fry until fragrant. Add sweet potato, fry for approx. 3 min. Add cumin, turmeric, ground coriander, or our CURYY POWER seasoning (if using), and chili flakes to a small bowl, mix to combine. Add to the pan and fry briefly until fragrant",
  },
  {
    "assets": "assets/step/halloumi_S3.jpeg",
    "info":
        "Add tomatoes, coconut milk, and water, bring to a boil, then stew over medium heat. Season with salt and pepper. Let simmer for approx. 20 min., or until it’s reduced and thick and the sweet potato is cooked through. Reserve a few pieces of halloumi for serving. Add the frozen peas plus the remaining halloumi back to the pan towards the end to warm through, season with garam masala (this can be skipped if you use CURRY POWER seasoning). Season again with salt if necessary. Serve with steamed basmati rice and fresh coriander",
  },
];

final imageChorizoPotato = [
  "assets/step/halloumi_M.jpeg",
  "assets/step/halloumi_S1.jpeg",
  "assets/step/halloumi_S2.jpeg",
  "assets/step/halloumi_S3.jpeg",
];
