import 'dart:ffi';
import 'dart:io';



import 'package:combino_app/homepage.dart';
import 'package:combino_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 class maindrawer extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Drawer(
       child: Column(
         children: [
           Container(
             width:double.infinity,
             padding:EdgeInsets.all(20.0),
             color: Colors.deepPurpleAccent,
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                   CircleAvatar(
                     backgroundImage: AssetImage('assets/images/tnlogo1.png'),
                     radius: 60.0,
                   ),
                 SizedBox(height: 10.0,)

               ],
             ),
           ),
           ListTile(
             leading: Icon(Icons.home_work_outlined),
             title: Text('Department',
             style: TextStyle(fontSize: 18,),
             ),
             onTap:() {
               Navigator.push(context,MaterialPageRoute(builder: (context) =>AfterSplash(),));
             },

           ),
           ListTile(
             leading: Icon(Icons.question_answer),
             title: Text('About',
               style: TextStyle(fontSize: 18,),
             ),
             onTap:() {
               showAboutDialog(context: context,
               applicationIcon: FlutterLogo(),
                 applicationName: 'Combino',
                 applicationVersion: '1.0.0+1',
                 children: [
                   Text(' This App is neither developmed by Tamilnadu Government nor represent the Tamilnadu Government.'),
                   Text('         This App is developed to help the public to have quick access and easy access to several Official Tamilnadu Government websites in a Single Application '),
                   Text('          All contents in the App is reffered from www.tn.gov.in and are subject to the terms of use of data from the portal www.tn.gov.in/termsofuse . We do not assure  you that the links in the App may be working all the time'),
                   Text('          We welcome your suggestions to improve our app any error found may kindly be brought to our notice by writing mail to bhuvaneshwaran752@gmail.com. Thanks for the Support. '),
                 ]
               );
             },

           ),
           ListTile(
             leading: Icon(Icons.exit_to_app),
             title: Text('Exit',
               style: TextStyle(fontSize: 18,),
             ),
            onTap: ()  => exit(0),
             

           ),
         ],
       ),


     );
   }
 }
 