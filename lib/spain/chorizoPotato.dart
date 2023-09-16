import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class ChorizoPotato extends StatelessWidget {
  const ChorizoPotato({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chorizo Potato'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/step/ChorizoPotato_M.jpeg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Chorizo Potato with Feta',
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
              'Ingredient List: \n\n[Step 1] :500 g new potatoes\n\n[Step 2] :15 g parsley 1 red onion 1 tsp white wine vinegar 1 tsp sugar 4 eggs 100 g chorizo 1 leek 1 tsp cumin seed ½ tsp salt\n\n [Step 3] :2 tbsp olive oil \n\n [Step 4] :100 g feta cheese',
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Items necessary: \n\n Step 1:pot, colander \n\n Step 2 : knife, cutting board, bowl \n\n Step 3 :spatula, frying pan (with lid) \n\n Step 4 :none \n\n  ',
              style: TextStyle(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageChorizoPotato.length,
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
    "assets": "assets/step/ChorizoPotato_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/ChorizoPotato_S1.jpeg",
    "info":
        "In a big pot, bring water to a boil, season well with salt and boil potatoes for approx. 15 min. If your potatoes are bigger, boil longer until fork tender. Drain and set aside to slightly cool.",
  },
  {
    "assets": "assets/step/ChorizoPotato_S2.jpeg",
    "info":
        "While the potatoes are cooking, coarsely chop parsley and reserve some leaves for serving. Then, thinly slice onion. In a bowl, mix vinegar, sugar and salt, then add onions and massage quickly. Set aside to let quick-pickle until you are ready to serve. Beat eggs in another bowl, add a pinch of salt and set aside. Peel and finely dice chorizo. Clean and thinly slice leeks. Coarsely crush cumin seeds if using them whole.",
  },
  {
    "assets": "assets/step/ChorizoPotato_S3.jpeg",
    "info":
        "Add chorizo to the pan on medium high heat and fry until oils come out and chorizo is slightly crispy, approx. 3–5 min. Add leeks and fry for another approx. 2–3 min. until a bit soft. Add potatoes and fry on high heat while slightly mushing them with a spatula, letting them fall apart just a little, and get crispy. Add oil and fry the cumin briefly until aromatic. Season with salt, turn down heat to medium-low and add egg mixture. Let cook for approx. 10–15 min. or until the eggs are set. Optionally, cook the first half of the cooking time with a lid on and remove in the second half.",
  },
  {
    "assets": "assets/step/ChorizoPotato_S4.jpeg",
    "info":
        "Crumble feta cheese over the skillet and serve with remaining parsley and pickled onions.",
  },
];

final imageChorizoPotato = [
  "assets/step/ChorizoPotato_M.jpeg",
  "assets/step/ChorizoPotato_S1.jpeg",
  "assets/step/ChorizoPotato_S2.jpeg",
  "assets/step/ChorizoPotato_S3.jpeg",
  "assets/step/ChorizoPotato_S4.jpeg",
];



// Column(
//               children: List.generate(
//                 imageChorizoPotato.length,
//                 (index) {
//                   return InkWell(
//                     onTap: () {
//                       // Afficher l'image en plein écran avec l'app bar
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (context) => FullScreenPage(
//                             imageAsset: product[index]['assets'] as String,
//                             info: product[index]['info'] as String,
//                           ),
//                         ),
//                       );
//                     },
//                     child: Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Row(
//                         children: [
//                           Container(
//                             height: 100,
//                             width: 100,
//                             child: Image.asset(
//                               product[index]['assets'] as String,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           SizedBox(width: 16.0),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Step $index',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     letterSpacing: 0.6,
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                                 Text(
//                                   '${product[index]['info']}',
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     letterSpacing: 0.7,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),


// class FullScreenPage extends StatelessWidget {
//   final String imageAsset;
//   final String info;

//   FullScreenPage({required this.imageAsset, required this.info});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // App bar avec le bouton de retour
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             // Retour à l'écran précédent
//             Navigator.of(context).pop();
//           },
//         ),
//         title: Text('Full Screen Image'),
//       ),
//       body: FullScreenWidget(
//         child: Image.asset(
//           imageAsset,
//           fit: BoxFit.cover,
//         ),
//         disposeLevel: DisposeLevel.High,
//       ),
//     );
//   }
// }

