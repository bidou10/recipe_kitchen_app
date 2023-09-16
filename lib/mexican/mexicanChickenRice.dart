import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class MexicanChickenRice extends StatelessWidget {
  const MexicanChickenRice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mexican Chicken Rice'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/MexicanChickenRice_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Mexican Chicken Rice',
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
              'Ingredient List: \n\n[Step 1] :133⅓ g chicken breast 1 cloves garlic 6⅔ g cilantro ⅓ red bell pepper ⅓ green bell pepper 1⅓ scallions \n\n [Step 2] :⅓ tbsp vegetable oil \n\n [Step 3] :⅓ tbsp vegetable oil 91⅔ g corn (canned or frozen) 158⅓ ml chicken stock 226⅔ g enchilada sauce salt pepper \n\n [Step 4]:86⅔ g rice (brown or white) \n\n [Step 5] :33⅓ g cheddar cheese (grated) ,⅓ small bunch cilantro',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1 :cutting board,knife \n\n Step 2 :large skillet with lid \n\n Step 3 :none \n\n Step 4 :none \n\n Step 5 :oven ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageMexicanChickenRice.length,
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
    "assets": "assets/step/MexicanChickenRice_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/MexicanChickenRice_S1.jpeg",
    "info":
        "Dice chicken breasts into large pieces. Mince garlic and cilantro, cut bell peppers into strips, and finely chop scallions.",
  },
  {
    "assets": "assets/step/MexicanChickenRice_S2.jpeg",
    "info":
        "Heat half of the vegetable oil in a large skillet over high heat. Add chicken pieces and sauté for approx. 5 – 7 min. until golden. Transfer to a plate and set aside.",
  },
  {
    "assets": "assets/step/MexicanChickenRice_S3.jpeg",
    "info":
        "Heat other half of vegetable oil and add scallions and garlic. Sauté until soft and fragrant for approx 1 - 2 min. Then, add bell pepper. Continue to sauté and add corn, chicken stock, and enchilada sauce. Season with salt and pepper.",
  },
  {
    "assets": "assets/step/MexicanChickenRice_S4.jpeg",
    "info":
        "Bring to a simmer and add rice. Cover and cook on medium-low heat for approx. 15 min. for white rice and 30 min. for brown rice until rice is al dente and most of the liquid absorbed. Preheat oven to 180°C/350°F and turn on the top heat, or set the broiler to high.",
  },
  {
    "assets": "assets/step/MexicanChickenRice_S5.jpeg",
    "info":
        "Shred chicken and combine with rice. Spread cheese on top, place skillet in the oven, and broil for approx. 5 - 10 min., or until cheese begins to melt. Garnish with cilantro and enjoy!",
  },
];

final imageMexicanChickenRice = [
  "assets/step/MexicanChickenRice_M",
  "assets/step/MexicanChickenRice_S1",
  "assets/step/MexicanChickenRice_S2",
  "assets/step/MexicanChickenRice_S3",
  "assets/step/MexicanChickenRice_S4",
  "assets/step/MexicanChickenRice_S5"
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
