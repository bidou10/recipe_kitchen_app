import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class Sushi extends StatelessWidget {
  const Sushi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sushi Uramaki'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/sushiUramaki_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Sushi Uramaki',
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
              'Ingredient List: \n\n[Step 1] :¾ cucumber ¾ avocado 178⅝ g salmon fillets ¾ sweet potato  \n\n [Step 2] :2⅞ dried seaweed sheets 428⅝ g sushi rice (cooked) 1⅜ tbsp sesame seeds 1⅜ tbsp masago (fish roe) \n\n [Step 3] :1⅜ tbsp wasabi paste \n\n [Step 4]: \n\n [Step 5] : sushi ginger (for serving) soy sauce (for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :sushi mat,plastic wrap,knife,frying pan,cutting board \n\n Step 2 :scissors \n\n Step 3 :none\n\n Step 4 :none \n\n Step 5 :none ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageSushi.length,
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
    "assets": "assets/step/sushiUramaki_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/sushiUramaki_S1.jpeg",
    "info":
        "Wrap the bamboo sushi mat with plastic wrap and set it aside. Quarter and deseed the cucumber, then cut into matchsticks. Halve and pit the avocado, then slice the flesh into strips. Cut the salmon into long strips. Peel and slice the sweet potato into strips, then fry in a pan until cooked through.",
  },
  {
    "assets": "assets/step/sushiUramaki_S2.jpeg",
    "info":
        "Halve dried seaweed sheets lengthwise and transfer to a sushi mat. With damp hands, spread cooked sushi rice evenly onto the seaweed sheet and sprinkle with either sesame seeds or fish roe.",
  },
  {
    "assets": "assets/step/sushiUramaki_S3.jpeg",
    "info":
        "Flip the whole seaweed sheet so the rice is underneath. Spread wasabi paste down the middle of the sheet. Fill with avocado and sweet potato for a vegetarian roll, or salmon and cucumber.",
  },
  {
    "assets": "assets/step/sushiUramaki_S4.jpeg",
    "info":
        "Roll together tightly by lifting the front side of the sushi mat and rolling it backwards.",
  },
  {
    "assets": "assets/step/sushiUramaki_S5.jpeg",
    "info":
        "Slice the finished roll with a sharp knife, arrange them on a plate, and serve with sushi ginger and soy sauce. Enjoy!",
  },
];

final imageSushi = [
  "assets/step/sushiUramaki_M.jpeg",
  "assets/step/sushiUramaki_S1.jpeg",
  "assets/step/sushiUramaki_S2.jpeg",
  "assets/step/sushiUramaki_S3.jpeg",
  "assets/step/sushiUramaki_S4.jpeg"
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
