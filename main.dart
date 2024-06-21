
import 'package:flutter/material.dart';
import 'package:olxapp/loginScreen.dart';
import 'package:olxapp/splash_screen.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    //we will make splash screen first we need package
    return FutureBuilder(future: Future.delayed(Duration(seconds: 5)),
        builder: (context, AsyncSnapshot snapshot){

      //show splash screen while waiting for the app resources to load
          if(snapshot.connectionState==ConnectionState.waiting){
            return MaterialApp(
      // To remove banner
              debugShowCheckedModeBanner: false,
              home: splashScreen(),);
          }
          else{
            //loading done return the app
            return MaterialApp(
              home: loginscreen(),
            );
          }
        },
    );
  }
}



