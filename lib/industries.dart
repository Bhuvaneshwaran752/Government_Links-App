import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class industries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Industries'),
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
             title:Text('Tamil Nadu Newsprint and Papers Limited'),
              subtitle: Text('TNPL'),
                   trailing: Icon(Icons.arrow_forward),
             onTap:() {
                _launchURL1();
                },
             ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('	Tamil Nadu Cement Corporation Limited'),
          subtitle: Text('TANCEM'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL2();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Tamil Nadu Magnesite Limited'),
          subtitle: Text('TANMAG'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL3();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Tamil Nadu Minerals Limited '),
          subtitle: Text('TAMIN'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL4();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('	Tamil Nadu Small Industries Corporation Limited '),
          subtitle: Text('TANSI'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL5();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Tamil Nadu Sugar Corporation Limited '),
          subtitle: Text('TASCO'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL6();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('	Tamil Nadu Salt Corporation Limited'),
          subtitle: Text('TNSC'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL7();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Tamil Nadu Polymer Industries Park Limited'),
          subtitle: Text('TNPIP'),
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
  const url = 'https://www.tnpl.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'http://tancem.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL3() async {
  const url = 'https://www.tn.gov.in/tanmag/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL4() async {
  const url = 'http://tamingranites.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL5() async {
  const url = 'http://www.tansi.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL6() async {
  const url = 'http://www.tasco.in/aboutus.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL7() async {
  const url = 'http://tnsalt.com/tnsalt-new/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL8() async {
  const url = 'http://www.tnpolymerpark.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}



