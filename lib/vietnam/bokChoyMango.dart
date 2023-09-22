import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class bokChoyMango extends StatelessWidget {
  const bokChoyMango({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bok Choy Mango'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/bokChoyMango_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Boy Choy Mango',
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
              'Ingredient List: \n\n[Step 1] :200 g bok choy 1½ scallions ½ mango ½ clove garlic 2½ g ginger ½ chili ½ lime\n\n[Step 2] :1 tbsp sugar 7½ g white sesame seeds 7½ g black sesame seeds\n\n [Step 3] :1 tsp miso paste 10 ml toasted sesame oil 1 tbsp soy sauce 1 tbsp rice vinegar ½ tbsp honey \n\n [Step 4] :none',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife,juicer \n\n Step 2 :saucepan,rubber spatula,silicone baking mat \n\n Step 3 :bowl \n\n Step 4 :bowl \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageBokChoyMango.length,
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
    "assets": "assets/step/bokChoyMango_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/bokChoyMango_S1.jpeg",
    "info":
        "Slice bok choy into thin strips and scallions into rings. Peel mango and dice. Mince garlic, ginger, and chili. Juice lime",
  },
  {
    "assets": "assets/step/bokChoyMango_S2.jpeg",
    "info":
        "To make the sesame crunch, caramelize the sugar in a saucepan. Add white and black sesame seeds and stir to combine. Transfer to a silicone baking mat and spread into a thin, even layer. Let cool then break into pieces with your hands",
  },
  {
    "assets": "assets/step/bokChoyMango_S3.jpeg",
    "info":
        "To make the dressing, add miso paste, toasted sesame oil, soy sauce, rice vinegar, and honey to a bowl. Add minced garlic, ginger, and chili and mix well to combine",
  },
  {
    "assets": "assets/step/bokChoyMango_S4.jpeg",
    "info":
        "Mix the bok choy, scallions, and mango with the dressing and sprinkle with sesame crunch. Enjoy!",
  },
];

final imageBokChoyMango = [
  "assets/step/bokChoyMango_M.jpeg",
  "assets/step/bokChoyMango_S1.jpeg",
  "assets/step/bokChoyMango_S2.jpeg",
  "assets/step/bokChoyMango_S3.jpeg",
  "assets/step/bokChoyMango_S4.jpeg",
];
