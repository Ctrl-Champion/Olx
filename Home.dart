import 'package:flutter/material.dart';
import 'package:olxapp/Mobiles.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
            'What are you looking for?',style:TextStyle(fontSize: 17) ),
      ),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text('Popular',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 70,
              color: Colors.indigo,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>cards()),);
                },
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar( radius: 25,
                      backgroundImage: AssetImage('images/mobile.jpg'),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('Mobiles',style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                ),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 70,
                color: Colors.indigo,
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: [
                      Container(
                        child: CircleAvatar( radius: 25,
                          backgroundImage: AssetImage('images/furniture.jpg'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('Furniture',style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 70,
                color: Colors.indigo,
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: [
                      Container(
                        child: CircleAvatar( radius: 25,
                          backgroundImage: AssetImage('images/c1.jpg'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('Cars',style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text('Others',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 70,
                color: Colors.indigo,
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: [
                      Container(
                        child: CircleAvatar( radius: 25,
                          backgroundImage: AssetImage('images/book.jpg'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('Books',style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 70,
                color: Colors.indigo,
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: [
                      Container(
                        child: CircleAvatar( radius: 25,
                          backgroundImage: AssetImage('images/toys.jpg'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('Kids',style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 70,
                color: Colors.indigo,
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: [
                      Container(
                        child: CircleAvatar( radius: 25,
                          backgroundImage: AssetImage('images/fashion.jpg'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('Fashion',style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 70,
                color: Colors.indigo,
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: [
                      Container(
                        child: CircleAvatar( radius: 25,
                          backgroundImage: AssetImage('images/property.jpg'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('Property',style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 70,
                color: Colors.indigo,
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: [
                      Container(
                        child: CircleAvatar( radius: 25,
                          backgroundImage: AssetImage('images/services.jpg'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('Services',style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}
