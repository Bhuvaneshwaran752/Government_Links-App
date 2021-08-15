import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class energy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Energy Department'),
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
        leading:Icon(Icons.electrical_services_sharp),
        title:Text('TNEB Limited'),
        subtitle: Text('Electricity Services'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:Icon(Icons.electrical_services_sharp),
        title:Text('Tamil Nadu Generation and Distribution Corporation Limited'),
        subtitle: Text('Electricity Generation and Distribution'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL1();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:Icon(Icons.electrical_services_sharp),
        title:Text('Tamil Nadu Transmission Corporation Limited'),
        subtitle: Text('Electricity Transmission'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL2();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:Icon(Icons.electrical_services_sharp),
        title:Text('Tamil Nadu Electricity Regulatory Commission'),
        subtitle: Text('Regulatory Body'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL3();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:Icon(Icons.electrical_services_sharp),
        title:Text('Tamil Nadu Energy Development Agency'),
        subtitle: Text('New and Renewable Energy Promotion'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL4();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:Icon(Icons.electrical_services_sharp),
        title:Text('Tamil Nadu Electrical Licensing Board'),
        subtitle: Text('	Licensing Body'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL5();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:Icon(Icons.electrical_services_sharp),
        title:Text('TNEB Reading Details'),
        subtitle: Text('TNEB'),
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
_launchURL() async {
  const url = 'http://www.tnebltd.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL1() async {
  const url = 'https://www.tangedco.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'http://www.tantransco.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL3() async {
  const url = 'https://web.archive.org/web/20121120103931/http://tnerc.tn.nic.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL4() async {
  const url = 'https://teda.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL5() async {
  const url = 'https://tnelb.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL6() async {
  const url = 'http://tneb.tnebnet.org/newlt/menu3solar1.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


