import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class communitywelfare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Community Welfare'),
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
         leading:Icon(Icons.people_alt_outlined),
         title:Text('Dept of BC,MBC & Minor Communities'),
         subtitle: Text('Backward class and miniority welfare'),
         trailing: Icon(Icons.arrow_forward),
         onTap:() {
           _launchURL1();
           },
         ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.people_alt_outlined),
          title:Text('Tamil Nadu Adi Dravidar Housing and Development Corporation Limited (TAHDCO)'),
          subtitle: Text('Adi Dravidar and Tribal Welfare'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL2();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.people_alt_outlined),
          title:Text('Tamil Nadu Wakf Board'),
          subtitle: Text('Wakf Administration'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL3();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),

        ListTile(
          leading:Icon(Icons.people_alt_outlined),
          title:Text('Tamil Nadu State Hajj Committee'),
          subtitle: Text('Hajj Pilgrimage Orientation'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL4();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.people_alt_outlined),
          title:Text('Tamil Nadu Corporation For Development of Women Limited (TANCDW)'),
          subtitle: Text('Women Empowerment'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL5();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.people_alt_outlined),
          title:Text('	Vanniyar Public Property Welfare Board	'),
          subtitle: Text('Public Charitable Trusts & Endowments Board'),
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
  const url = 'http://www.bcmbcmw.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'http://www.tahdco.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}_launchURL3() async {
  const url = 'https://www.tnwakfboard.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL4() async {
  const url = 'http://hajjtn.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL5() async {
  const url = 'http://www.tamilnadumahalir.org/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL6() async {
  const url = 'https://www.tn.gov.in/vppwb/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
