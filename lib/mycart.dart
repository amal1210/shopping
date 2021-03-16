import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.teal,
          accentColor: Colors.teal
      ),
      debugShowCheckedModeBanner: false,
      home:Scaffold(
      appBar: AppBar(
        title: Text("My CART",style: TextStyle(color: Colors.white)),
        leading: IconButton(onPressed: (){},
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            buildCard(),
            buildCard(),
            buildCard(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: (){},
      ),
    ),);
  }

  Card buildCard() {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.shopping_cart_outlined ,color: Colors.white,),
          backgroundColor: Colors.teal,
        ),
        title: Text("product name"),
        subtitle: Text("time"),
        trailing: Checkbox(
          value: _isChecked,
          onChanged: (value){
            setState(() {
              _isChecked=value;
            });
          },
        ),
      ),
    );
  }
}