import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class ThaiShrimp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pad thai shrimp'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/pad_Thai_Shrimp_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Pad Thai Shrimp',
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
              'Ingredient List: \n\n[Step 1] : ¼ tbsp tamarind paste 20 ml water (warm) 1 cloves garlic ,1 eggs ,1¼ scallions 31¼ g roasted peanuts, ½ limes ,\n\n [Step 2] :60 g broad rice noodles, 25 ml vegetable oil \n\n [Step 3] :fish sauce (for serving) ,18¾ g raw sugar  \n\n, [Step 4] :3 jumbo shrimp  \n\n,[Step 5] : none  \n\n,[Step 6] :25 g soy sprouts fish sauce (for serving),raw sugar (for serving)  \n\n ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 : 2 bowls,1 cutting board,1 knife \n\n Step 2 :1 heatproof bowl\n\n, Step 3 :1 saucepan , 1 cooking spoon,\n\n, Step 4 : 1 wok, 1 spatula,\n\n,Step 5 : none, \n\n Step 6: none ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageThaiShrimp.length,
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
                                    fontWeight: FontWeight.w700,
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

const product = [
  {
    "assets": "assets/step/pad_Thai_Shrimp_M.jpeg",
    "info": "Final photo, Enjoy your meal",
  },
  {
    "assets": "assets/step/pad_Thai_Shrimp_S1.jpeg",
    "info":
        "Mix the tamarind paste with the warm water until the paste dissolves, and set aside. Peel and mince the garlic. Crack the eggs into a bowl. Thinly slice scallions, roughly chop peanuts, and cut limes into wedges.",
  },
  {
    "assets": "assets/step/pad_Thai_Shrimp_S2.jpeg",
    "info":
        "Place the noodles in a large heatproof bowl and cover with warm water. Let sit for approx. 10 - 15 min., or until soft. Then drain and toss with half of the vegetable oil to prevent sticking.",
  },
  {
    "assets": "assets/step/pad_Thai_Shrimp_S3.jpeg",
    "info":
        "Combine fish sauce, tamarind water, and raw sugar in a saucepan over low heat. Remove from heat once sugar is dissolved.",
  },
  {
    "assets": "assets/step/pad_Thai_Shrimp_S4.jpeg",
    "info":
        "Add remaining oil to a wok over high heat. Add prawns and stir fry for 2 min. Then add garlic and stir together until prawns are nearly cooked through. Push them to the side and add the eggs. Scramble until cooked nearly through, and push to the side.",
  },
  {
    "assets": "assets/step/pad_Thai_Shrimp_S5.jpeg",
    "info":
        "Transfer noodles to the wok and add some water. Stir fry until the water is nearly gone, then add the tamarind sauce and toss everything gently. Let cook for approx. 3 min.",
  },
  {
    "assets": "assets/step/pad_Thai_Shrimp_S6.jpeg",
    "info":
        "Add bean sprouts, most of the scallions, and peanuts and toss until well combined. Season to taste with more fish sauce and sugar. Serve immediately with remaining scallions and lime wedges.",
  },
];

final imageThaiShrimp = [
  "assets/step/pad_Thai_Shrimp_M.jpeg",
  "assets/step/pad_Thai_Shrimp_S1.jpeg",
  "assets/step/pad_Thai_Shrimp_S2.jpeg",
  "assets/step/pad_Thai_Shrimp_S3.jpeg",
  "assets/step/pad_Thai_Shrimp_S4.jpeg",
  "assets/step/pad_Thai_Shrimp_S5.jpeg",
  "assets/step/pad_Thai_Shrimp_S6.jpeg",
];

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
