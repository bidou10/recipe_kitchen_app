import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Welcome',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Be the best cook with our recipes",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
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
                height: 80,
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: 330,
                    height: 60,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 3),
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Text(
                      'login',
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
                      onPressed: () {},
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 3),
                          borderRadius: BorderRadius.circular(70)),
                      child: Text(
                        'Sign Up',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                          size: 33,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.google,
                          color: Colors.redAccent,
                          size: 33,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.orangeAccent,
                          size: 33,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.linkedinIn,
                          color: Colors.blueAccent,
                          size: 33,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
