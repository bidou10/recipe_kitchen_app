import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class beefKofta extends StatelessWidget {
  const beefKofta({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beek Kofta'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/beefkKofta_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Beef Kofta',
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
              'Ingredient List: \n\n[Step 1] :115 g full-fat Greek yogurt 115 g flour 2 tbsp olive oil 2 tsp baking powder ⅛ tsp salt vegetable oil (for greasing)\n\n[Step 2] :1½ red onions 250 g ground beef ½ tbsp Aromen Reichtum seasoning\n\n [Step 3] :vegetable oil (for frying) 40 g full-fat Greek yogurt 30 g pickles 25 g pink pickled turnips 10 g mint salt (for serving) pepper (for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:nonstick pan,large bowl,kitchen towel \n\n Step 2 :knife,cutting board,grater,Aromen Reichtum seasoning \n\n Step 3 :none',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageKofta.length,
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
    "assets": "assets/step/beefkKofta_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/beefkKofta_S1.jpeg",
    "info":
        "First, make the flatbreads. In a large bowl, mix together most of the yogurt, flour, baking powder, olive oil and salt to form a dough. On a lightly oiled work surface, divide the dough into 8 equal portions and roll them out flat. Heat a non-stick frying pan and fry the flatbreads one by one in the dry pan for approx. 1 min. on each side. Turn as soon as the dough takes on some color and some dark spots appear. Keep the finished flatbreads warm under a kitchen towel until ready to serve",
  },
  {
    "assets": "assets/step/beefkKofta_S2.jpeg",
    "info":
        "In the meantime, peel and then grate ⅓ of the onions. Mix minced meat with our AROMEN REICHTUM seasoning and grated onion and let stand for approx. 15 min. Meanwhile, cut the remaining onions into strips.",
  },
  {
    "assets": "assets/step/beefkKofta_S3.jpeg",
    "info":
        "Shape the minced meat mixture into 8 finger-length, two-finger-thick kofta (approx. 60 g each). Heat oil in a pan and fry or grill kofta on all sides for approx. 4–6 min. over medium-high heat. Meanwhile, cut pickled cucumbers in half lengthwise and pluck leaves from mint. Serve kofta with the prepared flatbreads, the remaining yogurt, pickled vegetables, mint, and red onion strips",
  },
];

final imageKofta = [
  "assets/step/beefkKofta_M.jpeg",
  "assets/step/beefkKofta_S1.jpeg",
  "assets/step/beefkKofta_S2.jpeg",
  "assets/step/beefkKofta_S3.jpeg",
];
