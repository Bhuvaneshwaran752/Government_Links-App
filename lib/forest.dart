import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class forest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Forestry'),
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
            leading:Icon(Icons.account_tree_outlined),
             title:Text('Forests Department'),
             subtitle: Text('Tamil Nadu Forest department'),
              trailing: Icon(Icons.arrow_forward),
            onTap:() {
             _launchURL1();
            },
       ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.account_tree_outlined),
          title:Text('Arasu Rubber Corporation Limited'),
          subtitle: Text('Rubber Plantation'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL2();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.account_tree_outlined),
          title:Text('Tamil Nadu Forest Plantation Corporation Limited'),
          subtitle: Text('TAFCORN'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL3();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.account_tree_outlined),
          title:Text('Tamil Nadu Tea Plantation Corporation'),
          subtitle: Text('TANTEA'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL4();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.account_tree_outlined),
          title:Text('Tamil Nadu Biodiversity Conservation And Greening Society'),
          subtitle: Text('TNBCGS'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL5();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.account_tree_outlined),
          title:Text('Tamil Nadu Pollution Control Board '),
          subtitle: Text('TNPCB'),
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
  const url = 'https://www.forests.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'http://www.arasurubber.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  const url = 'http://www.tafcorn.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url = 'http://www.tantea.co.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL5() async {
  const url = 'http://www.tbgp.org/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL6() async {
  const url = 'https://tnpcb.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

