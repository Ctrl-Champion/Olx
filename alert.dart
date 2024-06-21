import 'package:flutter/material.dart';
import 'package:olxapp/Home.dart';
import 'dart:async';

class alert extends StatefulWidget {
  const alert({super.key});
  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const home()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: MaterialApp(
        home: Scaffold(
          body: Container(
            child: Center(
              child: Card(

                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                  onTap: () {

                  },
                  child: const SizedBox(
                  width: 200,
                  height: 50,
                  child: Center(
                    child: Text('Successful',style:
                    TextStyle(
                    fontSize: 17,),),
                  ),
                  ),
                  ),
                      ),
            ),
        ),
        )
      ),
    );
  }
}

