import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/nav/login_page.dart';
import 'package:recipe_kitchen_app/nav/preferance_page.dart';
import 'package:recipe_kitchen_app/nav/sign_up_page.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Tell us about yourself',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Share your preferences to get personalized recipe content and recommendations",
                      textAlign: TextAlign.justify,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/login.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: 330,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreferancePage(),
                        ),
                      );
                    },
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 3),
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: MaterialButton(
                      minWidth: 330,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PreferancePage(),
                          ),
                        );
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 3),
                          borderRadius: BorderRadius.circular(70)),
                      child: Text(
                        'Add preferences later',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
