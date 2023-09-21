import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class dalSoup extends StatelessWidget {
  const dalSoup({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dal Soup'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/dalSoup_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Dal Soup',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Recipe for four persons',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Ingredient List: \n\n[Step 1] :2 carrots 2 potatoes 20 g cilantro 1 onion 3 cloves garlic 1 chili 15 g ginger\n\n[Step 2] :200 g lentils 1 tbsp tomato paste 4 tsp coriander seeds 2 tsp cumin 2 tsp turmeric 2 tsp garam masala butter for frying\n\n [Step 3] :800 ml vegetable stock ,salt \n\n [Step 4] :250 ml coconut milk sugar',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1: cutting board, knife \n\n Step 2 :large saucepan, cooking spoon \n\n Step 3 :measuring cup \n\n Step 4 :none \n\n',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageDalSoup.length,
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
    "assets": "assets/step/dalSoup_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/dalSoup_S1.jpeg",
    "info":
        "Peel and cut carrots and potatoes into bite-sized pieces. Thinly slice cilantro. Mince onion, garlic, chili, and ginger.",
  },
  {
    "assets": "assets/step/dalSoup_S2.jpeg",
    "info":
        "In a large saucepan, sauté onions, garlic, chili, and ginger over medium heat until golden brown. Add potatoes and carrots and sauté for approx. another 4 – 5 min. Add lentils and sauté for a further 2 – 3 min. until they are slightly translucent. Add tomato paste and spices and, stirring constantly, sauté for approx. 1 – 2 min. until fragrant",
  },
  {
    "assets": "assets/step/dalSoup_S3.jpeg",
    "info":
        "Deglaze with vegetable stock and season with salt. Bring to a boil, turn heat down to low, and let simmer for approx. 15 – 20 min. or until the lentils are soft",
  },
  {
    "assets": "assets/step/dalSoup_S4.jpeg",
    "info":
        "Incorporate coconut milk into dal and reheat. Season to taste with salt, sugar, and lemon juice if desired. Garnish with cilantro and serve together with homemade naan",
  },
];

final imageDalSoup = [
  "assets/step/dalSoup_M.jpeg",
  "assets/step/dalSoup_S1.jpeg",
  "assets/step/dalSoup_S2.jpeg",
  "assets/step/dalSoup_S3.jpeg",
  "assets/step/dalSoup_S4.jpeg",
];
