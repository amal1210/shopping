import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'home.dart';

class sign_in extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double screen_width=MediaQuery.of(context).size.width;
    return MaterialApp(theme: ThemeData(
        primaryColor: Colors.teal,
        accentColor: Colors.teal
    ),
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column( mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset('images/teal.jpg'),
                    Positioned(top: 50,left: 100,
                      child:  Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 150,),

                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.all(8),
                  child: TextField(enabled: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'USER NAME',
                      alignLabelWithHint: false,

                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: new BorderSide(color: Colors.teal)),
                      labelText: 'PASSWORD',
                      alignLabelWithHint: false,

                    ),
                  ),
                ),

                SizedBox(height: 10,),
                Container(width: screen_width*5,height: 50,
                    margin: EdgeInsets.all(8),
                    child:RaisedButton(
                      textColor: Colors.white,
                      color: Colors.teal,
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home(),));},
                      child: Text('SIGN IN',style: TextStyle(fontSize: 30),),

                    )
                ),

                InkWell(
                  onTap: (){},
                  child: Text('Forget your password?',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),

                ),
                SizedBox(height: 7,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('DONT Have an account?',style:TextStyle(fontSize: 16,color: Colors.black) ),
                    GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>sign_up(),));},
                        child: Text
                          ('Sign up',
                            style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal) )),

                  ],
                )


              ],

            ),
          ),
        )
    );
  }
}