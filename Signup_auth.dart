import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:olxapp/Home.dart';
import 'package:olxapp/alert.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up', textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(
                child: Image.asset('images/person.jpg',color: Colors.orange,height: 80,width: 80,),
              ),
              Text(
                'Signup your account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Name',
                  filled: true,
                  fillColor: Colors.grey[300],
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'name@email.com',
                  filled: true,
                  fillColor: Colors.grey[300],
                ),
              ),
              SizedBox(height: 20),
              TextField(
                cursorHeight: 30,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Minimum 8 characters',
                  filled: true,
                  fillColor: Colors.grey[300],
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Minimum 8 characters',
                  suffixIcon: Icon(Icons.visibility),
                  filled: true,
                  fillColor: Colors.grey[300],
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: ElevatedButton(

                  onPressed: (){

                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context)=> alert(),
                  ),);
                },

                    child: Text('Submit'),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
