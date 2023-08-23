import 'package:flutter/material.dart';

class ThaiClassic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('thai classic'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/pad-thai-2.webp',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Pad Thai classic',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'authentic traditional pad thai of thailand.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(
                imageThaiClassic.length,
                (index) {
                  return ListTile(
                    leading: SizedBox(
                      height: 40,
                      width: 40, // Ajustez la largeur ici
                      child: Image.asset(
                        product[index]['assets'] as String,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text('Élément $index'),
                    subtitle: Text('Step ${product[index]['info']}'),
                    trailing: SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        imageThaiClassic[index],
                        fit: BoxFit.cover,
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

// class ThaiClassic extends StatelessWidget {
//   // final String sectionName;

//   // ThaiClassic(this.sectionName);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('thai classic'),
//       ),
//       body: ListView.builder(
//         itemBuilder: (context, index) => SingleChildScrollView(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // for (int index = 0; index < imageThaiClassic.length; index++)
//               Image.network(
//                 'https://data.asiahighlights.com/image/travel-guide/thailand/thai-food/pad-thai-2.webp',
//                 fit: BoxFit.cover,
//                 height: 200,
//                 width: 50,
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               Text(
//                 'Pad thai classic',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 8,
//               ),
//               Text(
//                 'authentic tradi ad thai',
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               ListView.builder(
//                 itemCount: imageThaiClassic.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     leading: Image.asset(
//                       product[index]['assets'] as String,
//                       height: 40,
//                       width: double.infinity,
//                     ),
//                     title: Text('Shrimp pad thai'),
//                     subtitle: Text('authentic shrimp thai'),
//                   );
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

final imageThaiClassic = [
  "assets/step/thai_stir_M.jpeg",
  "assets/step/thai_stir_S1.jpeg",
  "assets/step/thai_stir_S2.jpeg",
  "assets/step/thai_stir_S3.jpeg",
];

const product = [
  {
    "assets": "assets/step/thai_stir_M.jpeg",
    "info": "Final photo",
  },
  {
    "assets": "assets/step/thai_stir_S1.jpeg",
    "info": "Step 1",
  },
  {
    "assets": "assets/step/thai_stir_S2.jpeg",
    "info": "Step 2",
  },
  {
    "assets": "assets/step/thai_stir_S3.jpeg",
    "info": "Step 3",
  },
];
