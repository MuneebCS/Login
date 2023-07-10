import 'dart:ui';
import 'HomePage.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
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
              'Login',
              style: Theme.of(context).textTheme.headline2!,
            ),
          ),
          Positioned(
            left: 40,
            top: 200,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: _buildContainer(),
              ),
            ),
          ),
          Positioned(
            left: 60,
            top: 240,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 8),
                Container(
                  width: 250,
                  child: _buildTextField(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 60,
            top: 320,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 8),
                Container(
                  width: 250,
                  child: _buildTextField(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock),
                    obscureText: true,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 120,
            bottom: 40,
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'My4',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContainer() {
    return Container(
      width: 300,
      height: 230,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
    );
  }

  Widget _buildTextField({
    required String labelText,
    required String hintText,
    required Icon prefixIcon,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
