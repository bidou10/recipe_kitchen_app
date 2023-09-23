import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class grunkohl extends StatelessWidget {
  const grunkohl({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grünkohl'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/grünkohl_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Grünkohl',
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
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageGruunkohl.length,
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
    "assets": "assets/step/grünkohl_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "",
    "info":
        "First wash and dry the kale. Roughly chop it or tear it apart. Peel and dice the onions. Add bacon to a pan, over medium heat, let the fat render and then sauté it. Once browned, add the diced onions and sauté approx. 5 – 10 min. until translucent. Add kale, white wine and then the vegetable stock and bring to a boil. Cover the kale stew with a lid and let simmer for approx. 1 hr. on low heat.",
  },
  {
    "assets":
        "In the meantime, wash potatoes, add a pot, and cover well with water. Bring to a boil then reduce to a steady simmer for approx. 20 min. Drain potatoes, let cool, then peel them. Approx. 30 min. before the kale stew is ready, season with allspice, pepper, and mustard and stir in the oats. Add smoked sausages and let them warm through.",
    "info": "Final photo",
  },
  {
    "assets": "",
    "info":
        "Heat lard in a frying pan. Add the potatoes and fry until golden brown, season with salt. Then sprinkle with sugar and let them caramelize. Arrange kale stew and potatoes on plates. Top with bacon and sausages. Enjoy!",
  },
];

final imageGruunkohl = [
  "assets/step/grünkohl_M.jpeg",
];
