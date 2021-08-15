import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class infrastructure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Infrastructure'),
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
              leading:Icon(Icons.home_work_outlined),
                 title:Text('Tamil Nadu Housing Board'),
                 subtitle: Text('TNHB'),
                  trailing: Icon(Icons.arrow_forward),
                 onTap:() {
               _launchURL1();
              },
           ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Tamil Nadu Water Supply and Drainage Board'),
          subtitle: Text('TWAD'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL2();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Tamil Nadu Police Housing Corporation'),
          subtitle: Text('TNPHC'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL3();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Chennai Metropolitan Development Authority'),
          subtitle: Text('CMDA'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL4();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Chennai Metropolitan Water Supply and Sewage Board'),
          subtitle: Text('CMWSSB'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL5();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Tamil Nadu Slum Clearance Board '),
          subtitle: Text('TNSCB'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL6();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Tamil Nadu Road Development Company Limited'),
          subtitle: Text('TNRDC'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL7();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('IT Expressway Limited '),
          subtitle: Text('Roadways'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL8();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Tamil Nadu Road Infrastructure Development Corporation '),
          subtitle: Text('TNRIDC'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL9();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('TAMILNADU PUBLIC WORKS DEPARTMENT'),
          subtitle: Text('PWD'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL10();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),

      ],
  );
  return listview;
}
_launchURL1() async {
  const url = 'https://tnhb.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'https://www.twadboard.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL3() async {
  const url = 'http://www.tnphc.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL4() async {
  const url = 'http://www.cmdachennai.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL5() async {
  const url = 'https://chennaimetrowater.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL6() async {
  const url = 'http://www.tnscb.org/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL7() async {
  const url = 'http://tnrdc.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL8() async {
  const url = 'http://itel.tnrdc.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL9() async {
  const url = 'https://www.tnhighways.tn.gov.in/index.php/en/tnridc';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL10() async {
  const url = 'https://tnpwd.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
