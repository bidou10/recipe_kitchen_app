import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class CanarianPorkChops extends StatelessWidget {
  const CanarianPorkChops({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Canarian Pork Chops'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/CanarianPorkChops_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Canarian Pork Chops',
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
              'Ingredient List: \n\n[Step 1] :3 tbsp olive oil ½ tbsp sumac ½ tbsp sugar ½ tsp cumin ½ tbsp thyme 1 tbsp lemon juice 1 tsp paprika powder ½ tbsp tomato paste 2 pork chops\n\n[Step 2] :300 g new potatoes 60 g coarse sea salt\n\n [Step 3] :½ green bell pepper ½ green chili \n\n [Step 4] :15 g parsley 15 g cilantro \n\n [Step 5] :1 cloves garlic ½ tsp cumin 75 ml olive oil 1 tbsp lime juice salt pepper sugar \n\n [Step 6] :none \n\n [Step 7] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:freezer bags,bowl,whisk \n\n Step 2 :pot \n\n Step 3 :baking sheet,oven,cutting board,knife \n\n Step 4 :none \n\n Step 5 :immersion blender,large liquid measuring cup,small bowl \n\n Step 6 :none \n\n Step 7 :nonstick pan \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageCanarianPorkChops.length,
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
    "assets": "assets/step/CanarianPorkChops_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/CanarianPorkChops_S1.jpeg",
    "info":
        "For the marinade, mix together olive oil, sumac, sugar, cumin, thyme, lemon juice, paprika powder, and tomato paste in a bowl. Pour marinade into freezer bags and place the pork in as well. Make sure that the pork is coated completely in the marinade and seal the bags. Leave to marinate in the fridge for approx. 1 hr.",
  },
  {
    "assets": "assets/step/CanarianPorkChops_S2.jpeg",
    "info":
        "Wash potatoes thoroughly, and together with sea salt, add them to a pot. Fill the pot with water until the potatoes are fully submerged. Cover, and cook over medium heat for approx. 25 min.",
  },
  {
    "assets": "assets/step/CanarianPorkChops_S3.jpeg",
    "info":
        "Pre-heat oven to 180°C/350°F. For the mojo verde, wash and halve bell pepper and chili. Core the bell pepper and lay it onto a baking sheet. Bake in oven for approx. 25 min. Remove from oven, let cool, and remove the skin.",
  },
  {
    "assets": "assets/step/CanarianPorkChops_S4.jpeg",
    "info":
        "Meanwhile chop chili with seeds. Pick parsley leaves from stems and finely chop cilantro with stems and parsley.",
  },
  {
    "assets": "assets/step/CanarianPorkChops_S5.jpeg",
    "info":
        "Add bell pepper, chili, garlic, cumin, parsley, cilantro, salt, and olive oil to a liquid measuring cup and purée until smooth. Season with lime juice, salt, pepper, and sugar to taste. Transfer to a small bowl and set aside.",
  },
  {
    "assets": "assets/step/CanarianPorkChops_S6.jpeg",
    "info":
        "Pour out the water in the pot until there is still a bit left. Without the lid, heat the potatoes over medium-low heat until the water evaporates and shake the pot from time to time. This is to ensure that the potatoes get the typical wrinkled salt crust.",
  },
  {
    "assets": "assets/step/CanarianPorkChops_S7.jpeg",
    "info":
        "Take the meat out of the marinade and gently pat dry. Heat up a nonstick pan over high heat and sear the pork for approx. 3 – 4 min., flip over, and fry for approx. 2 – 3 min. more. Place the pork and potatoes onto a plate, serve with mojo verde and enjoy!",
  },
];

final imageCanarianPorkChops = [
  "assets/step/CanarianPorkChops_M.jpeg",
  "assets/step/CanarianPorkChops_S1.jpeg",
  "assets/step/CanarianPorkChops_S2.jpeg",
  "assets/step/CanarianPorkChops_S3.jpeg",
  "assets/step/CanarianPorkChops_S4.jpeg",
  "assets/step/CanarianPorkChops_S5.jpeg",
  "assets/step/CanarianPorkChops_S6.jpeg",
  "assets/step/CanarianPorkChops_S7.jpeg",
];
