import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class jiaozi extends StatelessWidget {
  const jiaozi({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chinese Jiaozi'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/jiaozi_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chinese Jiaozi',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Recipe for twenty four dumplings',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Ingredient List: \n\n[Step 1] :200 g flour ⅜ tsp salt 100 ml water\n\n[Step 2] :4 Sichuan peppercorns ⅜ star anise 20 ml water (hot) 6 g ginger 20 g leeks 200 g Napa cabbages ¾ tsp salt\n\n [Step 3] :40 ml chicken stock 200 g ground pork 1¼ tbsp soy sauce ¾ tbsp sesame oil ⅛ tsp white pepper salt \n\n [Step 4] :flou (for dusting) \n\n [Step 5] :80 ml water (cold) black rice vinegar (for serving) chili oil (for serving) soy sauce (for serving)',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:bowl (large), chopsticks,plastic wrap \n\n Step 2 :bowl (small),cutting board,knife,bowl (large),kitchen towel \n\n Step 3 :sieve , bowl \n\n Step 4 : rolling pin, kitchen towel \n\n Step 5 : large pot, bowl (small), slotted spoon \n\n ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageJiaozi.length,
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
    "assets": "assets/step/jiaozi_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/jiaozi_S1.jpeg",
    "info":
        "In a large bowl, add flour and salt. Stream in room-temperature water gradually, using a spatula or a pair of chopsticks to stir. Knead to form a dough (it’s ok if the dough feels hard at this point), cover with plastic wrap, and let rest for approx. 15 min. Knead for another minute, then let rest again, covered, for approx. 1 hr.",
  },
  {
    "assets": "assets/step/jiaozi_S2.jpeg",
    "info":
        "Add sichuan peppercorns and star anise to a small, heatproof bowl. Cover with boiling water and let infuse and cool. Then finely chop the leek and grate ginger. Remove the end of the Napa cabbage and finely chop. Toss cabbage with salt and set aside for approx. 15 min., to draw excess water out. Squeeze out the excess liquid by adding salted cabbage to a clean kitchen towel, then wring it tightly, or use a sieve and press down on the cabbage.",
  },
  {
    "assets": "assets/step/jiaozi_S3.jpeg",
    "info":
        "Strain the cooled spice water and mix with the chicken broth. Add ground pork, soy sauce, sesame oil, white pepper, and salt to a bowl. Gradually add the broth, stirring the mixture with a pair of chopsticks between each addition, until the ground meat soaks up the water. Keep stirring in one direction until it becomes a sticky paste that has some resistance to it. Finally add the Napa cabbage, leek and ginger, mix until fully combined.",
  },
  {
    "assets": "assets/step/jiaozi_S4.jpeg",
    "info":
        "Take out the dough and knead briefly on a lightly floured surface. Form into a ball, then divide into 4 pieces. Keep remaining dough covered with plastic wrap. Working one at a time, roll a dough ball into a log. Cut into small portions (each weighing between 10 – 12 g / approx ⅓ oz), then pat into a round disk, and use a rolling pin to roll into a circle, turning the dough clockwise, after each roll until you form a circle, approx 8 – 10 cm / 3 – 4 in.n diameter. Add about one tablespoon of the filling to the middle of the wrapper, then fold the wrapper in half and seal (you can see how we do it in the photo above). Repeat with the remaining dough and filling.",
  },
  {
    "assets": "assets/step/jiaozi_S5.jpeg",
    "info":
        "Bring a large pot of water to the boil over medium-high heat. Once boiling, add dumplings. When the water boils again, add the cold water and turn the heat down to medium. Then cook for approx. 5 min. more, until the dumplings are floating and the dough is cooked through and slightly see-through. Remove from the pot with a slotted spoon. Serve the dumplings with a dipping sauce on the side made from black rice vinegar, chili oil, and soy sauce. Enjoy",
  },
];

final imageJiaozi = [
  "assets/step/jiaozi_M.jpeg",
  "assets/step/jiaozi_S1.jpeg",
  "assets/step/jiaozi_S2.jpeg",
  "assets/step/jiaozi_S3.jpeg",
  "assets/step/jiaozi_S4.jpeg",
  "assets/step/jiaozi_S5.jpeg",
];
