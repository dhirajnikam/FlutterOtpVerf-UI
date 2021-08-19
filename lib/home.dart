import 'package:flutter/material.dart';
import 'package:otp/background.dart';
import 'package:otp/login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Background(),
        ),
        HomeScr()
      ],
    );
  }
}

class HomeScr extends StatelessWidget {
  const HomeScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome Home',
              style: TextStyle(color: Colors.blueGrey, fontSize: 25),
            ),
            SizedBox(
              height: 40,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    print('Working');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
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
                  child: Text('LogOut',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
