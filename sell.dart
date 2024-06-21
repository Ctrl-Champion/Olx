import 'package:flutter/material.dart';
import 'package:olxapp/alert.dart';

class sell extends StatefulWidget {
  const sell({super.key});

  @override
  State<sell> createState() => _sellState();
}

class _sellState extends State<sell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OlX',
          style: TextStyle(
              color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(
              'Add product for Sell',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Product Name',
                hintText: 'Swift car',
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Color',
                hintText: 'red',
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              cursorHeight: 30,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Price',
                hintText: '00000',
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contact',
                hintText: 'Must contain 11 number',
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Address',
                hintText: 'house#23 gulshan town lahore',
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>alert(),
                  ),
                  );
                },

                child: Text('Confirm'),

              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(
                onPressed: (){
                },

                child: Text('Upload images'),

              ),
            )
          ],
        ),
      ),
    );
  }
}

