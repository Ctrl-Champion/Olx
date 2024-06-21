import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      // will design splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset('images/cart.jpg', color: Colors.white,height: 100,width: 100, ),
            SizedBox(height: 10,),
            Container(
              child:
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(width: 20.0, height: 10.0),
                    const Text(
                      'OlX',
                      style: TextStyle(fontSize: 27.0,color: Colors.white),
                    ),
                    const SizedBox(width: 20.0, height: 10.0),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          RotateAnimatedText('Buy And Sell'),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      )
      ,
    );
  }
}
