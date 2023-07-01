import 'package:countries_flag/countries_flag.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/first_page.dart';

class PreferancePage extends StatelessWidget {
  PreferancePage({super.key});
  final List<String> items = List<String>.generate(10, (i) => '$i');
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
      body: ListTile(
        leading: CountriesFlag(Flags.afghanistan),
        title: Text('Japân dishes'),
        subtitle: Text('Best of Japan food'),
      ),
    );
  }
}
