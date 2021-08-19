import 'package:flutter/material.dart';
import 'package:otp/background.dart';
import 'package:otp/login.dart';
import 'package:otp/otp.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Background(),
          
        ),
        SigUp()
      ],
    );
  }
}



class SigUp extends StatelessWidget {
  const SigUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 250,
          ),
          Container(
              child: Text('Sign up',
                  style: TextStyle(
                      color: Colors.deepOrange.shade400, fontSize: 25))),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white60),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Full name',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white60),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Email',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white60),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Password',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white60),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Confirm Password',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Stack(
            alignment: Alignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  print('Working');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Otp()),
                      );
                },
                child: Container(
                  // alignment: Alignment.center,
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepOrange.shade400,
                  ),
                ),
              ),
              Container(
                child: Text('Next',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      print('Working');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
