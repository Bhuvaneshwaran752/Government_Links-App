import 'dart:async';

import 'package:combino_app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

void main() => runApp(MaterialApp(
  home: mainpage(),
  debugShowCheckedModeBanner:false,
));

class mainpage extends StatefulWidget {
  @override
  _mainpageState createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {

  @override
  void initState(){
    super.initState();
  }
  
  void initTimer()async{
    if(await checkinternet()){
      Timer(Duration(seconds: 2),()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()));

      });
    }else{

    }
  }

  Future<bool> checkinternet() async{
    var connectivityResult=await (Connectivity().checkConnectivity());
    if(connectivityResult==ConnectivityResult.mobile || connectivityResult==ConnectivityResult.wifi){
      return true;
  }else {
      return false;
    }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: checkinternet(),
          builder: (BuildContext c,snap){
            if(snap.data== null){
                return homepage();
            }
            else if(snap.data== true){
              return homepage();
            }
            else{
              return Padding(
                  padding:EdgeInsets.all(5.0),
                 child:Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:<Widget> [
                    Center(
                     child: Image.asset('assets/images/nointernet.png'),
                   ),
                     SizedBox(height: 10.0),
                     Center(
                       child: RaisedButton(
                         child: Text('Try again'),
                         onPressed: (){
                           setState(() {
                             initTimer();
                           });
                         },

                       ),
                     ),


                   ]
              )
              );
            }
          }
        ),
      ),
    );
  }
}
