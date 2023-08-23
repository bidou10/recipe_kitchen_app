import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/thai/thaiClassic.dart';
import 'package:recipe_kitchen_app/thai/thaiRedCurry.dart';
import 'package:recipe_kitchen_app/thai/thaiShrimp.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ThaiShrimp extends StatelessWidget {
  // final String sectionName;

  // ThaiShrimp(this.sectionName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pas thai shrimp'),
      ),
      // body: ListView.builder(
      //   itemCount: imageThaiStir.length,
      //   itemBuilder: (context, index) => SingleChildScrollView(
      //     padding: EdgeInsets.all(16.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         for (int index = 0; index < imageThaiStir.length; index++)
      //           Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               // Image.asset(product[index]['assets'] as String),
      //               Image.asset(
      //                 (product[index]['assets'] as String),
      //                 height: 200,
      //                 width: double.infinity,
      //                 fit: BoxFit.cover,
      //               ),
      //             ],
      //           ),
      //         SizedBox(
      //           height: 16.0,
      //         ),
      //         Text(
      //           'Pad thai',
      //           style: TextStyle(
      //             fontSize: 18.0,
      //             fontWeight: FontWeight.w500,
      //           ),
      //         ),
      //         SizedBox(
      //           height: 8.0,
      //         ),
      //         Text(
      //           'plat thai mélange poivre sel, envoutant ',
      //           style: TextStyle(
      //             fontSize: 14.0,
      //           ),
      //         ),
      //         SizedBox(
      //           height: 10.0,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

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

final etape = [
  "step 1",
  "step 2",
  "step 3",
  "step 4",
  "step 5",
  "step 6",
  "step 7",
  "step 8",
  "step 9",
  "step 10"
];

final imageThaiStir = [
  "assets/step/thai_stir_M.jpeg",
  "assets/step/thai_stir_S1.jpeg",
  "assets/step/thai_stir_S2.jpeg",
  "assets/step/thai_stir_S3.jpeg",
];

final ingredients = ["a", "b", "c", "d", "e", "f", "g", "h", "i"];
// je dois creer ue class avec une description de l'element


