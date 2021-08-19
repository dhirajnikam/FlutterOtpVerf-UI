
import 'package:flutter/material.dart';
import 'package:otp/background.dart';
import 'package:otp/home.dart';

class Otp extends StatelessWidget {
  const Otp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Background(),
          
        ),
        Otgver()
      ],
    );
  }
}


class Otgver extends StatelessWidget {
  const Otgver({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            SizedBox(
              height:100
            ),
            Text('OTP Verification',style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blueGrey
            ),),
            Text('We have sent otp to your email dhi******am@gmail.com',style: TextStyle(color: Colors.blueGrey),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This code will expired in',style: TextStyle(color: Colors.blueGrey),),
                Text('00:30',style: TextStyle(color: Colors.red.shade400),)
              ],
            ),
            SizedBox(
              height:50
            ),
            Otpfor(),
            SizedBox(
              height: 170,
            ),
                          Stack(
                alignment: Alignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                       print('Working');
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
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
                    child: Text('Done',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  )
                ],
              ),

          ],),
        ),
      ),
    );
  }
}

class Otpfor extends StatelessWidget {
  const Otpfor({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SizedBox(
          width: 60,
          child: TextFormField(style: TextStyle(fontSize: 24),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
            ),
          
          ),),
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          width: 60,
          child: TextFormField(style: TextStyle(fontSize: 24),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
            ),
          
          ),),
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          width: 60,
          child: TextFormField(style: TextStyle(fontSize: 24),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
            ),
          
          ),),
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          width: 60,
          child: TextFormField(style: TextStyle(fontSize: 24),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
            ),
          
          ),),
        )
      ],),
      
    );
  }
}