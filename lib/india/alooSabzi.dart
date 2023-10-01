import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class alooSabzi extends StatelessWidget {
  const alooSabzi({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aloo Sabzi'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/alooSabzi_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Aloo Sabzi',
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
              'Ingredient List: \n\n[Step 1] :350 g local waxy potatoes ½ red onion 5 g cilantro ½ chili 5 g ginger 2 cloves garlic salt\n\n[Step 2] :1 tbsp vegetable oil ½ tsp cumin seed ½ tsp mustard seed salt\n\n [Step 3] :½ tbsp tomato paste ½ tsp ground coriander ¼ tsp garam masala ½ tsp ground turmeric ¼ tsp chili powder 200 g tomato purée (passata) salt 115 ml water \n\n [Step 4] :2 tbsp vegetable oil ¼ tsp cumin seed ½ tsp mustard seed ½ lime yogurt',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:pot,knife,cutting board \n\n Step 2 :pot, cooking spoon \n\n Step 3 :cooking spoon \n\n Step 4 :frying pan \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageAlloSabzi.length,
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
    "assets": "assets/step/alooSabzi_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/alooSabzi_S1.jpeg",
    "info":
        "Add the potatoes and salt to a pot, cover with water, and bring to a boil. Let it simmer for approximately 20-30 min. until the potatoes are done. Finely dice the onion, roughly chop the coriander and chilli. Finely grate the ginger and garlic. Peel the cooled potatoes, cut in pieces and season with more salt.",
  },
  {
    "assets": "assets/step/alooSabzi_S2.jpeg",
    "info":
        "Heat oil in a pot. When the oil is hot, add cumin and mustard seeds. Reduce the heat and let the spices fry for about 30 sec. until the flavors have developed. Add the onion to the pot, season with salt and fry for around 7 min. until the onion has gotten some colour.",
  },
  {
    "assets": "assets/step/alooSabzi_S3.jpeg",
    "info":
        "Add garlic and ginger to the pot and let them fry for 1-2 min. Then, add the tomato paste and all the ground spices that are left. Fry for another min. before adding the sieved tomatoes. Season with salt and scrape the bottom of the pot with a wooden spoon. Let the curry simmer for 10 min. until it has an aromatic flavour. Next, add the water and potatoes and season with salt if needed. Stir, let it simmer for another few min. before taking it off the heat.",
  },
  {
    "assets": "assets/step/alooSabzi_S4.jpeg",
    "info":
        "Heat the rest of the oil in a small pan and add the chopped chilli. Fry for 1-2 min., then add the rest of the cumin and mustard seeds together with the coriander. Over low heat, allow the oil to infuse for 3-4 min. Serve the potatoes with a little bit of lime juice and optionally a dab of yoghurt and sprinkle with the chilli and coriander oil.",
  },
];

final imageAlloSabzi = [
  "assets/step/alooSabzi_M.jpeg",
  "assets/step/alooSabzi_S1.jpeg",
  "assets/step/alooSabzi_S2.jpeg",
  "assets/step/alooSabzi_S3.jpeg",
  "assets/step/alooSabzi_S4.jpeg",
];
