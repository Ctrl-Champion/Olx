import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olxapp/ProductCard.dart';
import 'package:olxapp/order.dart';
import 'package:olxapp/sell.dart';

class cards extends StatefulWidget {
  const cards({super.key});

  @override
  State<cards> createState() => _MyMobileState();
}

class _MyMobileState extends State<cards> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          shadowColor: Colors.black,
            ),
        body:
        ListView(
        children: [
          Container(
            child:Card(

              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {

                },
                child: const SizedBox(
                  width: 300,
                  height: 50,
                  child: Text('What you want?',style:
                  TextStyle(
                      fontSize: 20,wordSpacing: 2,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child:Center(
                    child: Card(
                     color: Colors.grey,
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Myapp(),
                          ),);

                        },
                        child: const SizedBox(
                          width: 70,
                          height: 50,
                          child: Center(child: Text('Buy',style:
                          TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child:Center(
                    child: Card(
                      color: Colors.black38,
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>sell(),),);
                        },
                        child: const SizedBox(
                          width: 70,
                          height: 50,
                          child: Center(child: Text('Sell',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child:Column(
                children: [
                  Container(
                    height: 300,
                    width: 280,
                    child: Column(
                        children:[
                          Image.asset('images/furniture.jpg'),
                          ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>order()));
                          }, child: Text('Buy Now')),
                    ]
                  ),
                  ),
                  Container(
                    height: 300,
                    width: 400,
                    child: Column(
                        children:[
                          Image.asset('images/c3.jpg'),
                          ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>order()));
                          }, child: Text('Buy Now')),
                      ]
                  ),
                  ),
                  Container(
                    height: 300,
                    width: 420,
                    child: Column(
                      children: [
                        Image.asset('images/t3.jpg'),
                        ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>order()));
                        }, child: Text('Buy Now')),
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    width: 280,
                    child: Column(
                        children:[
                          Image.asset('images/property.jpg'),
                          ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>order()));
                          }, child: Text('Buy Now')),
                  ]
                  ),
                  ),
                ],
              )
            ),
          ),
        ],
        )
    ),
    );
  }
}


