import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class ChickenFajitas extends StatelessWidget {
  const ChickenFajitas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken Fajitas'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/ChickenFajitas_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chicken Fajitas',
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
              'Ingredient List: \n\n[Step 1] :1 chili 1 red bell pepper 1 tomato 1 red onion 300 g chicken breasts \n\n [Step 2] : salt 1 tsp Kitchen Stories Viva la Spice seasoning (optional) vegetable oil (for frying) 1 tsp tomato paste 100 ml red wine\n\n [Step 3] : 100 ml tomato sauce ¼ lime salt pepper 4 flour tortillas shredded Emmentaler cheese\n\n ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:cutting board,knife \n\n Step 2 :frying pan (large),cooking spoon, Viva la Spice seasoning \n\n Step 3 :Viva la Spice seasoning \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageChickenFajitas.length,
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
    "assets": "assets/step/ChickenFajitas_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/ChickenFajitas_S1.jpeg",
    "info":
        "Remove seeds from the chili pepper and chop finely. Finely dice pepper, tomato, and onion. Cut chicken breast into pieces (approx 1cm x 1cm).",
  },
  {
    "assets": "assets/step/ChickenFajitas_S2.jpeg",
    "info":
        "Season the chicken with salt and VIVA LA SPICE seasoning (if using). Sear in some vegetable oil until golden. Add pepper, tomato, onion, and tomato paste and sauté. Deglaze with red wine.",
  },
  {
    "assets": "assets/step/ChickenFajitas_S3.jpeg",
    "info":
        "Add tomato sauce and simmer for approx. 5 – 7 min. Season with chili, lime juice, salt and pepper. Heat the tortillas and roll with guacamole, chicken filling, and grated cheese to enjoy the fajitas.",
  },
];

final imageChickenFajitas = [
  "assets/step/ChickenFajitas_M.jpeg",
  "assets/step/ChickenFajitas_S1.jpeg",
  "assets/step/ChickenFajitas_S2.jpeg",
  "assets/step/ChickenFajitas_S3.jpeg",
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
