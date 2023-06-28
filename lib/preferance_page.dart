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
            color: Colors.red,
          ),
          child: ListTile(
            leading: Image.network(
              'https://picsum.photos/250?image=9',
            ),
            title: Text(
              'Title',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(
              'Subtitle',
              style: TextStyle(fontSize: 16),
            ),
            trailing: Icon(Icons.arrow_forward),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            dense: true,
          ),
        ),
      ),
    );
  }
}
