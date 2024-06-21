import 'package:flutter/material.dart';
import 'package:olxapp/alert.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
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
              'Order here',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Product Quantity',
                hintText: '1',
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
                labelText: 'Customer Name',
                hintText: 'Name',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>alert()),
                  );
                },

                child: Text('Order Confirm'),

              ),
            )
          ],
        ),
      ),
    );
  }
}
