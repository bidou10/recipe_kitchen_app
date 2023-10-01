import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class PescePazza extends StatelessWidget {
  const PescePazza({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesce all Acqua Pazza'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/PesceAcquaPazza_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Pesce all Acqua Pazza',
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
              'Ingredient List: \n\n[Step 1] :½ fennel 1 carrot 2 scallions 200 g cherry tomatoes 3 cloves garlic ½ chili 2 tbsp parsley \n\n[Step 2] :3 tbsp olive oil 10 jarred black olive sea salt pepper\n\n [Step 3] :150 ml white wine 300 ml water 4 sea bass fillets sea salt \n\n [Step 4] :1 lemon extra-virgin olive oil bread (for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife,peeler,bowl (small) \n\n Step 2 :cast iron pan (with lid) \n\n Step 3 :none \n\n Step 4 :fine grater,citrus press,bowl (small) \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imagePescePazza.length,
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
    "assets": "assets/step/PesceAcquaPazza_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/PesceAcquaPazza_S1.jpeg",
    "info":
        "Slice fennel and set aside. Peel and slice carrot and add to the bowl with the fennel. Roughly chop scallions and add to the bowl. Halve cherry tomatoes. Peel garlic and thinly slice. Thinly slice chili. Roughly chop parsley",
  },
  {
    "assets": "assets/step/PesceAcquaPazza_S2.jpeg",
    "info":
        "Add olive oil to a pan over medium-high heat. Add scallions, carrot, and fennel and sauté for approx. 4 min. Add tomatoes, garlic, chili, olives, and half the chopped parsley and fry for approx. 2 min. Season with salt and pepper.",
  },
  {
    "assets": "assets/step/PesceAcquaPazza_S3.jpeg",
    "info":
        "Deglaze with white wine and let reduce by about half. Add water and bring to a boil. Reduce heat then place the fillets over the vegetables, sprinkle with salt, and cover with the lid. Steam over low heat for approx. 4 min",
  },
  {
    "assets": "assets/step/PesceAcquaPazza_S4.jpeg",
    "info":
        "Mix remaining parsley with lemon zest, lemon juice, and a drizzle of olive oil. Remove pan from heat and cover with parsley mixture. Serve with crusty bread and enjoy",
  },
];

final imagePescePazza = [
  "assets/step/PesceAcquaPazza_M.jpeg",
  "assets/step/PesceAcquaPazza_S1.jpeg",
  "assets/step/PesceAcquaPazza_S2.jpeg",
  "assets/step/PesceAcquaPazza_S3.jpeg",
  "assets/step/PesceAcquaPazza_S4.jpeg",
];
