import 'package:flutter/material.dart';

class about extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.teal,
          accentColor: Colors.teal
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ABOUT',style: TextStyle(color: Colors.white),),
          leading: IconButton(onPressed: (){},
            icon: Icon(Icons.arrow_back,color: Colors.white,),
          ),

        ),

      ),

    );
  }

}