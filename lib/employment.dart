import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class employment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Labour and employment'),
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
             leading:Icon(Icons.work),
              title:Text('Tamil Nadu Public Service Commission '),
               subtitle: Text('TNPSC'),
                trailing: Icon(Icons.arrow_forward),
            onTap:() {
               _launchURL1();
                 },
              ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.work),
          title:Text('	Overseas Manpower Corporation Limited (OMC)'),
          subtitle: Text('Overseas Manpower Outsourcing'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL2();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.work),
          title:Text('Tamil Nadu Ex-Servicemen Corporation Limited (TEXCO) '),
          subtitle: Text('Ex-Servicemen Rehabilitation'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL3();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.work),
          title:Text('Tamil Nadu Skill Development Corporation Limited (TNSDC) '),
          subtitle: Text('Skill Development'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL4();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.work),
          title:Text('DEPT of Employment and Training '),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL5();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
      ],
  );
  return listview;
}
_launchURL1() async {
  const url = 'https://www.tnpsc.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'https://www.omcmanpower.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL3() async {
  const url = 'https://www.texco.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL4() async {
  const url = 'https://www.tnskill.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL5() async {
  const url = 'https://tnvelaivaaippu.gov.in/Empower/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
