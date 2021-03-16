import 'package:flutter/material.dart';
import 'appdrawer.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        child: Scaffold(
          appBar: AppBar(title: Text('products',style: TextStyle(color: Colors.white),),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Man',),
                Tab(text: 'Women',),
                Tab(text: 'Jewelery',),
                Tab(text: 'Electronics',),
              ],
            ),
          ),
          drawer: AppDrawer(),
          body: TabBarView(
            children: [

            ],
          ),

        ),
        length: 4,

      ),
    );
  }

}