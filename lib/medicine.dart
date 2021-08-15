import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class medicine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Health and Family Welfare'),
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
                leading:Icon(Icons.medical_services),
                   title:Text('Health and Family Welfare Department'),
                    subtitle: Text('Tamil Nadu Medical faciities'),
                   trailing: Icon(Icons.arrow_forward),
                    onTap:() {
                       _launchURL1();
                             },
                       ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.medical_services),
          title:Text('Tamil Nadu Medical Services Corporation Limited'),
          subtitle: Text('TNMSC'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL2();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.medical_services),
          title:Text('Tamil Nadu Medical Plant Farms & Herbal Medicine Corporation Limited '),
          subtitle: Text('TAMCOL'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL3();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.medical_services),
          title:Text('	Tamil Nadu State AIDS Control Society'),
          subtitle: Text('TANSACS'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL4();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.medical_services),
          title:Text('Tamil Nadu State Medicinal Plant Board'),
          subtitle: Text('Health and Family Welfare'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL5();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.medical_services),
          title:Text('Transplant Authority of Tamil Nadu '),
          subtitle: Text('TRANSTAN'),
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
  const url = 'https://tnhealth.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'https://tnmsc.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}_launchURL3() async {
  const url = 'https://tampcol.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}_launchURL4() async {
  const url = 'https://tnsacs.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}_launchURL5() async {
  const url = 'https://tnsmpb.org/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}_launchURL6() async {
  const url = 'https://transtan.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}