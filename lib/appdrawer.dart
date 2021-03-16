import 'package:flutter/material.dart';
import 'change_password.dart';
import 'settings.dart';
import 'mycart.dart';
import 'mypurchases.dart';
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(child: Container(

            ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/shopping-background.jpg'),
                  fit: BoxFit.fill

                ),
              ),),

            ListTile(
              leading: Icon(Icons.settings,color: Colors.teal),
              title: Text('settings'),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>settings(),));},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_cart,color: Colors.teal),
              title: Text('My cart'),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCart(),));},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_bag,color: Colors.teal,),
              title: Text('my purchases'),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mypurchases(),));},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.list,color: Colors.teal),
              title: Text('my activities'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info,color: Colors.teal),
              title: Text('about'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}