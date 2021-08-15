import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class election extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(' Election '),
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
                   leading:Icon(Icons.how_to_vote),
                       title:Text('Tamil Nadu State Election Commission'),
                       subtitle: Text('TNSEC'),
                      trailing: Icon(Icons.arrow_forward),
                   onTap:() {
                       _launchURL1();
                      },
              ),
        Divider(height: 5.0, color:Colors.black,),
        ListTile(
          leading:Icon(Icons.how_to_vote),
          title:Text('Public Election Department'),
          subtitle: Text('TN Election website'),
          trailing: Icon(Icons.arrow_forward),
          onTap:() {
            _launchURL2();
          },
        ),
        Divider(height: 5.0, color:Colors.black,),
           ],
      );
  return listview;
}
_launchURL1() async {
  const url = 'https://tnsec.tn.nic.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'https://www.elections.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

