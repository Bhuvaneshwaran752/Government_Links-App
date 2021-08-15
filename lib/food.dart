import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Food and co-operation'),
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
               leading:Icon(Icons.fastfood_rounded),
                title:Text(' Tamil Nadu Civil Supplies Corporation'),
                subtitle: Text('TNCSC'),
                 trailing: Icon(Icons.arrow_forward),
                 onTap:() {
                 _launchURL1();
               },
             ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.fastfood_rounded),
          title:Text('Tamil Nadu Cooperative Marketing Federation Limited'),
          subtitle: Text('TANFED'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL2();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.fastfood_rounded),
          title:Text('Tamil Nadu Warehousing Corporation'),
          subtitle: Text('Storage & Warehousing'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL3();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.fastfood_rounded),
          title:Text('	Tamil Nadu Cooperative Union'),
          subtitle: Text('TNCU'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL4();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
      ],
  );
  return listview;
}
_launchURL1() async {
  const url = 'http://www.tncsc.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'http://www.tanfed.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL3() async {
  const url = 'https://tnwc.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


_launchURL4() async {
  const url = 'http://www.tncu.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}



