import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class MoroccoChickpea extends StatelessWidget {
  const MoroccoChickpea({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Morocco Chickpea'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/moroccanChickpea_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Morocco Chickpea',
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
              'Ingredient List: \n\n[Step 1] :⅜ onion 1¼ cloves garlic ¾ carrots ⅜ kg sweet potatoes ⅜ yellow bell pepper ⅜ bulb small fennel 40 g kale\n\n[Step 2] :¾ tbsp extra-virgin olive oil ⅜ tsp ground paprika ⅜ tsp cumin ⅜ tsp ground coriander seeds ⅜ tsp turmeric ¼ tsp ground ginger ¼ tsp ground cinnamon ¼ tsp sea salt ¼ tsp black pepper ⅛ tsp cayenne pepper \n\n [Step 3] :300 ml water ¾ tbsp homemade vegetable stock concentrate 160 g canned chopped tomatoes \n\n [Step 4] :136 g quinoa ⅜ tsp cider vinegar (optional) ⅜ tsp lemon (juice) \n\n [Step 5] :192 g chickpeas (drained) salt to taste 12 g fresh herbs (mint, parsley, or cilantro) for serving ⅜ lemon (juice)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:vegetable peeler,paring knife,chef s knife,cutting board \n\n Step 2 :wooden spoon \n\n Step 3 :none \n\n Step 4 :small saucepan \n\n Step 5 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageMoroccoChickpea.length,
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
    "assets": "assets/step/_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/moroccanChickpea_S1.jpeg",
    "info":
        "Peel and finely dice onion and garlic. Peel carrots and sweet potatoes and cut into bite-size pieces. Deseed and dice bell pepper. Remove leaves and core from fennel and chop rest into small pieces. Wash kale, remove leaves from stems, and cut or tear into bite-size pieces.",
  },
  {
    "assets": "assets/step/moroccanChickpea_S2.jpeg",
    "info":
        "In a large pot, heat the olive oil over medium heat. Add onion and garlic and sear quickly. Lower heat, add all of the spices, and sauté for approx. 2 min. Add sweet potatoes, carrots, bell pepper and fennel and sauté for approx. 2 more min",
  },
  {
    "assets": "assets/step/moroccanChickpea_S3.jpeg",
    "info":
        "Stir in water, vegetable stock, and tomatoes and bring to a boil. Reduce heat and let simmer for approx. 15 – 20 min. until sweet potatoes are softened, but still firm",
  },
  {
    "assets": "assets/step/moroccanChickpea_S4.jpeg",
    "info":
        "Meanwhile, prepare quinoa according to package instructions, boiling it with the cider vinegar and some of the lemon juice. When little white rings begin to form around the grains, drain any excess water and set quinoa aside",
  },
  {
    "assets": "assets/step/moroccanChickpea_S5.jpeg",
    "info":
        "Add chickpeas to stew and let simmer for approx. 10 min. Before serving, add kale and salt to taste. Serve with fresh herbs and lemon juice. Enjoy!",
  },
];

final imageMoroccoChickpea = [
  "assets/step/moroccanChickpea_M.jpeg",
  "assets/step/moroccanChickpea_S1.jpeg",
  "assets/step/moroccanChickpea_S2.jpeg",
  "assets/step/moroccanChickpea_S3.jpeg",
  "assets/step/moroccanChickpea_S4.jpeg",
  "assets/step/moroccanChickpea_S5.jpeg",
];
