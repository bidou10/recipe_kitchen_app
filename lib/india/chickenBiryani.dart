import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class chickenBiryani extends StatelessWidget {
  const chickenBiryani({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken Biryani'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/chickenBiryani_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chicken Biryani',
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
              'Ingredient List: \n\n[Step 1] :1⅓ cloves garlic 3⅓ cardamom pods 3⅓ g ginger 1⅓ tsp Kitchen Stories Curry Power seasoning (optional) ⅔ tbsp garam masala ⅓ tsp chili powder ⅓ tsp ground turmeric ⅔ tsp salt 200 g yogurt 2 chicken thighs\n\n[Step 2] :1⅓ onions 66⅔ g ghee 100 ml whole milk ⅓ tsp saffron 2⅔ green chilis\n\n [Step 3] :300 g basmati rice ⅔ tsp black cumin seeds 1⅓ cinnamon sticks 2⅔ black peppercorns ⅔ tsp salt \n\n [Step 4] :1⅓ tbsp cilantro 2⅔ tbsp lemon juice',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:knife,cutting board,bowl (large),mortar and pestle,Curry Power seasoning \n\n Step 2 :pot(small) \n\n Step 3 :pot (large),colander \n\n Step 4 :pot \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageChickenBiryani.length,
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
    "assets": "assets/step/chickenBiryani_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/chickenBiryani_S1.jpeg",
    "info":
        "Crush garlic. Remove cardamom seeds from pods and grind. Mince ginger. Add ginger, garlic and ground cardamom to a bowl, add garam masala, chili powder and turmeric or CURRY POWER seasoning (if using), then season with salt. Mix to combine. Add yogurt and chicken thighs and let marinate for 3 hours",
  },
  {
    "assets": "assets/step/chickenBiryani_S2.jpeg",
    "info":
        "Thinly slice onions. Heat ghee in a large pot over medium heat, add onions, and fry until golden brown. Remove from heat and set aside. Combine milk and saffron in a small pot. Bring to a boil, remove from heat, and set aside. Finely chop green chilies and set aside",
  },
  {
    "assets": "assets/step/chickenBiryani_S3.jpeg",
    "info":
        "Add rice to another pot along with water, black cumin, cinnamon, salt and pepper. Bring to a boil, reduce heat to low, place a lid on, and cook for 5 min. Drain the rice and spread it out, so it doesn’t stick. The rise should not be cooked through at this point",
  },
  {
    "assets": "assets/step/chickenBiryani_S4.jpeg",
    "info":
        "Transfer chicken thighs and marinade to the pot with the fried onions and fry until seared. Distribute the milk-saffron mixture, chilies, cilantro, lemon juice, and rice. Cook for approx. 1 hour over low heat with a lid. If the meat isn’t tender after 1 hour, continue cooking for another 15 min. Once ready, mix well and serve immediately",
  },
];

final imageChickenBiryani = [
  "assets/step/chickenBiryani_M.jpeg",
  "assets/step/chickenBiryani_S1.jpeg",
  "assets/step/chickenBiryani_S2.jpeg",
  "assets/step/chickenBiryani_S3.jpeg",
  "assets/step/chickenBiryani_S4.jpeg",
];
