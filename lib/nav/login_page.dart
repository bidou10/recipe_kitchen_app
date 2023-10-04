import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/nav/preferance_page.dart';
import 'package:recipe_kitchen_app/nav/user_experience.dart';

class LoginPage extends StatelessWidget {
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
      body: SafeArea(
<<<<<<< HEAD
        child: Container(
          height: MediaQuery.of(context).size.height,
          width:
              MediaQuery.of(context).size.width, // utilise  80% de la largeur
          child: SingleChildScrollView(
=======
        child: SingleChildScrollView(
          child: Flexible(
>>>>>>> JapanDescriptionV1
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
<<<<<<< HEAD
                            fontSize: 30,
=======
                            fontSize: 20,
>>>>>>> JapanDescriptionV1
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: Text(
                            "Welcome back ! Login in your account for to find old recipes that you used before",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
<<<<<<< HEAD
                              fontSize: 19,
=======
                              fontSize: 15,
>>>>>>> JapanDescriptionV1
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        SizedBox(
<<<<<<< HEAD
                          height: 30,
=======
                          height: 10,
>>>>>>> JapanDescriptionV1
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 4,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icons/loginv1.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          makeInput(label: "Email"),
                          makeInput(label: "Password", obsureText: true),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        padding: EdgeInsets.only(top: 3, left: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black))),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PreferancePage(),
                              ),
                            );
                          },
                          color: Colors.amber[400],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont have an account?"),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.amber,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.amber,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}
