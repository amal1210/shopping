import 'package:flutter/material.dart';

class change_password extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        accentColor: Colors.teal,

    ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('change password',style: TextStyle(color: Colors.white),),
          leading: IconButton(onPressed: (){},
            icon: Icon(Icons.arrow_back,color: Colors.white,),
          ),
        ),
        body: Padding(padding: EdgeInsets.all(19.0),
          child: Column(
            children: [
                   TextFormField(
    keyboardType: TextInputType.visiblePassword,
    decoration: InputDecoration(
    labelText: "old password",)),
              SizedBox(height: 10,),
              TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "new password",)),
              SizedBox(height: 10,),
              TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "confirm password",)),
              SizedBox(height: 10,),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.teal,
                onPressed: (){},
                child: Text('Change password',style: TextStyle(fontSize: 30),),

              )



            ],
          ),
        ),
      ),
    );
  }

}