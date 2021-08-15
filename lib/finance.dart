import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class finance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Finance and Banking'),
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
      leading:Icon(Icons.money),
      title:Text('Tamil Nadu Transport Development Finance Corporation Limited'),
       subtitle: Text(' Transport Capital & Working Finance'),
         trailing: Icon(Icons.arrow_forward),
         onTap:() {
           _launchURL1();
           },
          ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.money),
          title:Text('Tamil Nadu Industrial Investment Corporation Limited (TIIC)'),
          subtitle: Text(' '),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL2();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.money),
          title:Text('Tamil Nadu Power Finance and Infrastructure Development Corporation Limited (POWERFIN)'),
          subtitle: Text('	Electricity Finance'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL3();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.money),
          title:Text('Tamil Nadu Urban Infrastructure Financial Services Limited (TNUIFSL)'),
          subtitle: Text('Urban Infrastructure Finance and Solutions '),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL4();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.money),
          title:Text('	Tamil Nadu State Apex Co-operative Bank'),
          subtitle: Text('Banking'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL5();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.money),
          title:Text('	Tamil Nadu Industrial Cooperative Bank Limited - TAICO Bank'),
          subtitle: Text('Banking'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL6();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
      ],
  );
  return listview;
}
_launchURL1() async {
  const url = 'http://www.tdfc.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'https://www.tiic.org/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL3() async {
  const url = 'https://www.tnpowerfinance.com/tnpfc-web';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL4() async {
  const url = 'http://www.tnudf.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL5() async {
  const url = 'https://www.tnscbank.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL6() async {
  const url = 'https://web.archive.org/web/20121107201509/http://taicobank.com/aboutus.htm';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


