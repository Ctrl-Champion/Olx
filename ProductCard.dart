import 'package:flutter/material.dart';
import 'package:olxapp/order.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Products detail',style: TextStyle(fontSize: 25,color: Colors.white),),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(25),
              child: productcard(
                image: '',
                title: '',
                description: '',
                price: '',
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: productcard(
                image: '',
                title: '',
                description: '',
                price: '',
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: productcard(
                image: '',
                title: '',
                description: '',
                price: '',
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: productcard(
                image: '',
                title: '',
                description: '',
                price: '',
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: productcard(
                image: '',
                title: '',
                description: '',
                price: '',
              ),
            ),
          ],
        )
      ),
    );
  }
}

















class productcard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String price;


  const productcard({super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),

            ),
            child: Image.asset('images/toys.jpg',
            width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10,),
          Text('Kids Toys'),
          SizedBox(height: 5,),
          Text('Unbreakable toys for kids playing'),
          SizedBox(height: 10,),
          Text('8500'),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>order()));
          }, child: Text('Buy Now')),
        ],
      ),
    );
  }
}
