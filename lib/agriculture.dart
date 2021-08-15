import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class agriculture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Agriculture and allied sectors'),
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
           leading:Icon(Icons.agriculture),
            title:Text('Agricultural Engineering Dept'),
             subtitle: Text('வேளாண்மைப் பொறியியல் துறை'),
             trailing: Icon(Icons.arrow_forward),
           onTap:() {
           _launchURL();
         },
       ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.agriculture),
          title:Text('Tamil Nadu State Agricultural Marketing Board (TNSAMB)'),
          subtitle: Text('Agricultural Market Regulator'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL1();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.agriculture),
          title:Text('Tamil Nadu Horticulture Development Agency (TANHODA)'),
          subtitle: Text('Horticultural Schemes Implementation'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL2();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.agriculture),
          title:Text('Tamil Nadu Horticultural Producers Co-operative Enterprises Limited (TANHOPE)'),
          subtitle: Text('Horticultural Farmers Betterment & Products Marketing'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL3();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.agriculture),
          title:Text('Tamil Nadu Co-operative Milk Producers- Federation Limited (AAVIN)'),
          subtitle: Text('Milk and allied products Production'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL4();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.agriculture),
          title:Text('Tamil Nadu Fisheries Development Corporation Limited (TNFDC)'),
          subtitle: Text('Reservoir Fisheries Development'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL5();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.agriculture),
          title:Text('Tamil Nadu State Apex Fisheries Cooperative Federation Limited (TAFCOFED)'),
          subtitle: Text('Marine Fisheries Development'),
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
  const url = 'http://www.aed.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL1() async {
  const url = 'https://web.archive.org/web/20120615040816/http://www.tnsamb.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'https://web.archive.org/web/20120616174222/http://www.tanhoda.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL3() async {
  const url = 'https://web.archive.org/web/20120616174222/http://www.tanhoda.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL4() async {
  const url = 'https://aavinmilk.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL5() async {
  const url = 'https://www.tn.gov.in/fisheries/TNFDC.pdf';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL6() async {
  const url = 'https://www.tn.gov.in/fisheries/TNFDC.pdf';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}