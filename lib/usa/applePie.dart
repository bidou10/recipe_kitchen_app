import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class ApplePie extends StatelessWidget {
  const ApplePie({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apple Pie'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/applePie_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Apple Pie',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Recipe cake for twelve persons',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Ingredient List: \n\n[Step 1] :360 g butter 500 g flour 1 egg yolk ½ tsp salt 120 g sugar 60 ml water\n\n[Step 2] :flour (for dusting)\n\n [Step 3] :none \n\n [Step 4] :8 apples \n\n [Step 5] :½ lemon ½ tsp ground cinnamon ¼ tsp ground nutmeg 20 g flour 50 g sugar 100 g raw sugar \n\n [Step 6] :40 g butter 1 egg white 1 tsp water',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:stand mixer with dough hookplastic wrap \n\n Step 2 :oven,rolling pin \n\n Step 3 :parchment paper,pie dish,pie weights \n\n Step 4 :cutting board, knife \n\n  Step 5 :citrus press,bowl (large),cooking spoon \n\n Step 6 :pastry brush',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageApplePie.length,
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
    "assets": "assets/step/applePie_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/applePie_S1.jpeg",
    "info":
        "Cut some of butter into large pieces and add to a stand mixer with most of flour, egg yolk, salt, and sugar. Beat for approx. 2–3 min. until crumbly. Then, slowly add water and continue to beat for another 1–2 min. until dough is smooth and uniform in consistency. Wrap dough in plastic wrap and transfer to refrigerator. Allow to set for approx. 1 h.",
  },
  {
    "assets": "assets/step/applePie_S2.jpeg",
    "info":
        "Preheat oven to 180°C/350°F. Cut dough into two even rounds. Then, flour work surface, place dough on top, and roll out, one at a time, using a rolling pin until rounds are larger than your pie dish.",
  },
  {
    "assets": "assets/step/applePie_S3.jpeg",
    "info":
        "Flour both sides of dough and transfer to pie dish. Press evenly into all edges of dish and then remove excess dough. Place a piece of parchment paper on top of dish and fill with pie weights. Place in preheated oven at 180°C/350°F and blind bake for approx. 10 min.",
  },
  {
    "assets": "assets/step/applePie_S4.jpeg",
    "info":
        "Peel, core, and quarter apples. Then, cut crosswise into medallion-sized pieces.",
  },
  {
    "assets": "assets/step/applePie_S5.jpeg",
    "info":
        "Juice lemon. In a large bowl, thoroughly mix together apple, lemon juice, cinnamon, nutmeg, flour, sugar, and brown sugar.",
  },
  {
    "assets": "assets/step/applePie_S6.jpeg",
    "info":
        "Transfer apple slices to pie dish and spread out evenly. Cut remainder of butter into pieces and place on top of apples. Cover pie with rest of dough. Make a small hole in the middle, so air can escape. Mix together egg white and water and brush on top. Return to oven and bake at 180°C/350°F for approx. 50–55 min. until golden brown. Enjoy!",
  },
];

final imageApplePie = [
  "assets/step/applePie_M.jpeg",
  "assets/step/applePie_S1.jpeg",
  "assets/step/applePie_S2.jpeg",
  "assets/step/applePie_S3.jpeg",
  "assets/step/applePie_S4.jpeg",
  "assets/step/applePie_S5.jpeg",
  "assets/step/applePie_S6.jpeg",
];
