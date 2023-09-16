import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class thaiLemongrass extends StatelessWidget {
  const thaiLemongrass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thai Lemongrass meatballs'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/lemongrass_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Thai Lemongrass meatballs',
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
              'Ingredient List: \n\n[Step 1]:5 g ginger ,1 cloves garlic ,½ stalk lemongrass ,¼ chili ,7½ g cilantro ,½ lime ,½ tbsp sugar ,1 tbsp fish sauce \n\n [Step 2] :250 g ground pork ,1 tbsp fish sauce ,7½ g cilantro, salt,pepper \n\n [Step 3] :vegetable oil (for frying) \n\n [Step 4] : rice (cooked, for serving) white cabbage (for serving) lime (for serving) ',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :cutting board, knife,bowl, juicer \n\n Step 2 :bowl \n\n Step 3 :frying pan ,tongs \n\n Step 4 : bowl',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageThaiLemongrassMeatballs.length,
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
    "assets": "assets/step/lemongrass_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/lemongrass_S1.jpeg",
    "info":
        "Finely mince ginger, garlic, lemongrass, and chili. Chop cilantro, saving some stalks for serving . To make the dressing, mix the juice of one lime, sugar, half of the fish sauce, half of the minced chili, and half of the minced cilantro in a small bowl. Set aside.",
  },
  {
    "assets": "assets/step/lemongrass_S2.jpeg",
    "info":
        "Place ground pork, minced ginger, lemongrass, garlic and the remaining chili, fish sauce and remaining minced cilantro in a mixing bowl. Season with salt and pepper and mix thoroughly. Use wet hands to form the meatball mixture into walnut-sized balls.",
  },
  {
    "assets": "assets/step/lemongrass_S3.jpeg",
    "info":
        "Heat vegetable oil in a frying pan over medium heat. Once the pan is hot, add meatballs. Fry on one side until golden brown, then flip carefully. Fry the meatballs for about 7 minutes, or until all sides are golden brown and cooked through.",
  },
  {
    "assets": "assets/step/lemongrass_S4.jpeg",
    "info":
        "Assemble a bowl with steamed rice, meatballs, white cabbage and cilantro, and lime wedges if desired. Spoon some of the sauce over.",
  },
];

final imageThaiLemongrassMeatballs = [
  "assets/step/lemongrass_M.jpeg",
  "assets/step/lemongrass_S1.jpeg",
  "assets/step/lemongrass_S2.jpeg",
  "assets/step/lemongrass_S3.jpeg",
  "assets/step/lemongrass_S4.jpeg"
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
