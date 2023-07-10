import 'package:flutter/material.dart';

import 'Login.dart';
import 'Signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/my14.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 40,
            top: 150,
            child: Text(
              'Freedom on Wheels',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Positioned(
            left: 120,
            bottom: 100,
            child: buildButton('Signup', context),
          ),
          Positioned(
            left: 120,
            bottom: 40,
            child: buildButton('Login', context),
          ),
        ],
      ),
    );
  }

  Widget buildButton(String label, BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: ElevatedButton(
        onPressed: () {
          if (label == 'Signup') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signup()),
            );
          } else if (label == 'Login') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontFamily: 'My4',
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
