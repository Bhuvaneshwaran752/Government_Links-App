import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class textiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Handlooms, Handicrafts, Textiles & Khadi Department'),
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
                leading:Icon(Icons.wallet_giftcard_sharp),
                  title:Text(' Handlooms, Handicrafts, Textiles & Khadi Department'),
                 trailing: Icon(Icons.arrow_forward),
                   onTap:() {
                     _launchURL1();
                },
              ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.wallet_giftcard_sharp),
          title:Text('The Tamil Nadu Handicrafts Development Corporation Limited '),
          subtitle: Text('Poompuhar'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL2();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.wallet_giftcard_sharp),
          title:Text('Tamil Nadu Khadi and Village Industries Board'),
          subtitle: Text('Khadi Kraft'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL3();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.wallet_giftcard_sharp),
          title:Text('	Tamil Nadu Palm Products Development Board'),
          subtitle: Text('Palm Products'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL4();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.wallet_giftcard_sharp),
          title:Text('Tamil Nadu Co-operative Silk Producers Federation Limited'),
          subtitle: Text('TANSILK'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL5();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.wallet_giftcard_sharp),
          title:Text('The Tamil Nadu Handloom Weavers'),
          subtitle: Text(' Co-operative Society Limited'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL6();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.wallet_giftcard_sharp),
          title:Text('Tamil Nadu Handloom Development Corporation Limited '),
          subtitle: Text('THDC'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL7();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.wallet_giftcard_sharp),
          title:Text('Tamil Nadu Textile Corporation Limited'),
          subtitle: Text('Powerloom'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL8();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
      ],
       );
  return listview;
}
_launchURL1() async {
  const url = 'https://www.tn.gov.in/hhtk/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'https://poompuhar.com/tnhdc/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL3() async {
  const url = 'https://tnkvib.org/tnkvib/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL4() async {
  const url = 'https://www.tn.gov.in/hhtk/palm/palm-home.htm';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL5() async {
  const url = 'https://www.tn.gov.in/hhtk/Sericulture/seri-tansilk.htm';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL6() async {
  const url = 'https://www.cooptex.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL7() async {
  const url = 'https://www.tn.gov.in/hhtk/dht/dht-thdc.htm';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL8() async {
  const url = 'https://www.tn.gov.in/hhtk/dht/dht-tntc.htm';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

