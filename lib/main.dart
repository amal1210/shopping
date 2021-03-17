import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shopping/sign_up.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(theme: ThemeData(
            primaryColor: Colors.teal,
            accentColor: Colors.teal
        ),
        debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.white,
        body:
            AnimatedSplashScreen(
              duration: 3000,
              nextScreen: sign_up(),
              splash: Text('ONLINE SHOP',style: TextStyle(color: Colors.teal,fontSize: 50,fontWeight: FontWeight.bold, ),),
              backgroundColor: Colors.white,
              splashTransition: SplashTransition.sizeTransition,
            ),



      )

    );
  }

}