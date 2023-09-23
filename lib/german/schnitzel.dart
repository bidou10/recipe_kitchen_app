import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class schnitzel extends StatelessWidget {
  const schnitzel({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schnitzel'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/schnitzel_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Schnitzel',
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
              'Ingredient List: \n\n[Step 1] :2 eggs 50 ml milk\n\n[Step 2] :250 g veal\n\n [Step 3] :none \n\n [Step 4]:100 g flour salt pepper  \n\n [Step 5]:100 g breadcrumbs  \n\n [Step 6] :½ lemon butter for frying salt',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:large bowl ,whisk \n\n Step 2 :cutting board,knife \n\n Step 3 :meat tenderizer,cutting board \n\n Step 4 :none \n\n Step 5 :none \n\n Step 6 :frying pan,tongs \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageSchnitzel.length,
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
    "assets": "assets/step/schnitzel_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/schnitzel_S1.jpeg",
    "info": "In a large bowl, whisk together eggs and milk.",
  },
  {
    "assets": "assets/step/schnitzel_S2.jpeg",
    "info": "Cut veal into approx. two finger thick butterflied portions.",
  },
  {
    "assets": "assets/step/schnitzel_S3.jpeg",
    "info":
        "Beat out the veal as thinly as possible without making holes in it.",
  },
  {
    "assets": "assets/step/schnitzel_S4.jpeg",
    "info":
        "Season cutlets with salt and pepper. Dredge each piece in flour and afterwards in the egg mixture. Set aside.",
  },
  {
    "assets": "assets/step/schnitzel_S5.jpeg",
    "info": "Next, dredge the cutlets in breadcrumbs.",
  },
  {
    "assets": "assets/step/schnitzel_S6.jpeg",
    "info":
        "In a frying pan, fry schnitzel in some butter over medium heat until golden brown and crispy. Season once more with salt. Serve with a lemon wedge and enjoy with some homemade potato salad!",
  },
];

final imageSchnitzel = [
  "assets/step/schnitzel_M.jpeg",
  "assets/step/schnitzel_S1.jpeg",
  "assets/step/schnitzel_S2.jpeg",
  "assets/step/schnitzel_S3.jpeg",
  "assets/step/schnitzel_S4.jpeg",
  "assets/step/schnitzel_S5.jpeg",
  "assets/step/schnitzel_S6.jpeg",
];
