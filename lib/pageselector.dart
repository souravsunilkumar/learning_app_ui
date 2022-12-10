import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_online_learning_app/explorer%20tab/explorer.dart';
import 'package:flutter_online_learning_app/screens/leaderboard.dart';
import 'package:flutter_online_learning_app/screens/profile_page.dart';
import 'package:flutter_online_learning_app/screens/screens.dart';

class pageselector extends StatelessWidget {
  const pageselector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Select page")      ),
        body: Center(
          child: Column(
            children: [

              SizedBox(height: 30,),
              ElevatedButton(onPressed:(){
                 Navigator.push(context,
 MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
              } , child: Text("courses page")),


               SizedBox(height: 30,),
              ElevatedButton(onPressed:(){
                 Navigator.push(context,
 MaterialPageRoute(builder: (context) => const explorer()),
            );
              } , child: Text("Explorer Tab")),



              SizedBox(height: 30,),
              ElevatedButton(onPressed:(){
                 Navigator.push(context,
 MaterialPageRoute(builder: (context) => const Profile()),
            );
              } , child: Text("leader board")),



              
              SizedBox(height: 30,),
              ElevatedButton(onPressed:(){
                 Navigator.push(context,
 MaterialPageRoute(builder: (context) =>  ProfilePage()),
            );
              } , child: Text("profile")),



              
             



              
              
            ],
          ),
        ),
    ) ; 
  }
}