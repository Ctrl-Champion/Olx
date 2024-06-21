import 'package:flutter/material.dart';
import 'package:olxapp/regScreen.dart';
import 'package:flutter_animate/flutter_animate.dart';
 
class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column
        (
        children: [
          Expanded(
            child: Container(
              // to get device width
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Image.asset('images/buy1.jpg',height: 200,width: 200,),
                  SizedBox(height: 10,),
                  Text('Buy or Sell',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
                  color: Colors.indigo)),
                  SizedBox(height: 50,)
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
            child: Auth(),
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('If you continue, you are accepting \n Terms and Conditions and privacy policy',
            textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),),
          )
        ],
      ),
    );
  }
}
