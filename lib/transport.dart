import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
 class transport extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title:Text('Transport Department'),
         centerTitle: true,
         backgroundColor: Colors.deepPurpleAccent,
       ),
       body: getListView(context),

     );
   }
 }
Widget getListView(BuildContext context)
{
  var listview=ListView(
      children: [
          ListTile(
          leading:Icon(Icons.bus_alert),
          title:Text('TNSTC'),
          subtitle: Text('TamilNadu State Transport Corporation'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
          _launchURL();
          },
       ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.directions_boat_outlined),
          title:Text('Tamil Nadu Maritime Board'),
          subtitle: Text('Highways and Minor Ports'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL1();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.train_outlined),
          title:Text('Chennai Metro Rail Limited'),
          subtitle: Text('Metro Rail Services'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL2();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.add_road),
          title:Text('Transport Commissionerate and State Transport Authority'),
          subtitle: Text('TNSTA'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL3();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
      ],
  );
  return listview;
}
_launchURL() async {
  const url = 'https://www.tnstc.in/home.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL1() async {
  const url = 'http://www.tnmaritime.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'https://chennaimetrorail.org/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL3() async {
  const url = 'https://tnsta.gov.in/tnsta/homepage';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}








