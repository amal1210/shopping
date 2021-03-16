import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'change_password.dart';

class settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(
         primaryColor: Colors.teal,
         accentColor: Colors.teal
     ),
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
         title: Text('settings',style: TextStyle(color: Colors.white),),
         leading: IconButton(onPressed: (){},
           icon: Icon(Icons.arrow_back,color: Colors.white,),
         ),
       ),
       body:Padding(padding: EdgeInsets.all(20),
         child: SettingsList(
           sections: [
             SettingsSection(
               title: 'GENERAL SETTINGS',
               titlePadding: EdgeInsets.all(20),
               tiles: [
                 SettingsTile(title: 'CHANGE LANGUAGE',
                   leading:  Icon(Icons.language,color: Colors.teal,),
                   onPressed: (BuildContext context){},

                 ),
                 SettingsTile(title: 'CHANGE Password',
                   leading:  Icon(Icons.lock,color: Colors.teal,),
                   onPressed: (BuildContext context){Navigator.push(context, MaterialPageRoute(builder: (context)=>change_password(),));},

                 ),

               ],
             )
           ],
         ),
       ) ,

     ),
   );
  }

}