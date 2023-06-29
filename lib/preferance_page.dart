import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/first_page.dart';

class PreferancePage extends StatelessWidget {
  const PreferancePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(39.0),
            border: Border.all(
                style: BorderStyle.solid, color: Colors.black87, width: 3),
          ),
          child: ListTile(
            minLeadingWidth: double.negativeInfinity,
            leading: Image.asset(
              'assets/images/dish/gyosa.jpeg',
              fit: BoxFit.cover,
            ),
            title: Text(
              "Shrimp Pad Thai",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(
              'Shrimp Pad Thai. Chewy rice noodles fried with jumbo shrimp, tofu and eggs with vegetables in a savoury, sweet and tangy sauce.',
              style: TextStyle(fontSize: 16),
            ),
            trailing: Icon(
              Icons.more_horiz_outlined,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            dense: true,
          ),
        ),
      ),
    );
  }
}
