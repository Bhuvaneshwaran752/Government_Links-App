import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class industrialpromotion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Industrial promotion'),
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
                  title:Text('State Industries Promotion Corporation of Tamil Nadu Limited'),
                  subtitle: Text('SIPCOT'),
                  trailing: Icon(Icons.arrow_forward),
                onTap:() {
                _launchURL1();
                    },
             ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Tamil Nadu Industrial Development Corporation Limited'),
          subtitle: Text('TIDCO'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL2();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Tamil Nadu Small Industries Development Corporation Limited '),
          subtitle: Text('SIDCO'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL3();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('	Tamil Nadu Industrial Guidance and Export Promotion Bureau'),
          subtitle: Text('Investment Attraction & Documentation, Export Promotion'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL4();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('Electronics Corporation of Tamil Nadu Limited'),
          subtitle: Text('ELCOT'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL5();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('	ITCOT Consultancy and Services Limited'),
          subtitle: Text('Industrial and Technical Consultancy Services'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL6();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.home_work_outlined),
          title:Text('TIDEL Park Limited'),
          subtitle: Text('Information Technology Park'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL7();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
      ],
  );
  return listview;
}
_launchURL1() async {
  const url = 'https://sipcot.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'https://tidco.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL3() async {
  const url = 'https://www.tansidco.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL4() async {
  const url = 'https://investingintamilnadu.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL5() async {
  const url = 'https://elcot.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL6() async {
  const url = 'http://www.itcot.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL7() async {
  const url = 'https://www.tidelpark.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


