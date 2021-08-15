import 'package:combino_app/agriculture.dart';
import 'package:combino_app/communitywelfare.dart';
import 'package:combino_app/election.dart';
import 'package:combino_app/employment.dart';
import 'package:combino_app/energy.dart';
import 'package:combino_app/finance.dart';
import 'package:combino_app/food.dart';
import 'package:combino_app/forest.dart';
import 'package:combino_app/industrialpromotion.dart';
import 'package:combino_app/industries.dart';
import 'package:combino_app/infrastructure.dart';
import 'package:combino_app/maindrawer.dart';
import 'package:combino_app/medicine.dart';
import 'package:combino_app/textiles.dart';
import 'package:combino_app/transport.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:splashscreen/splashscreen.dart';



class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new AfterSplash(),
        title: new Text('Welcome',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),
        image: new Image.asset('assets/images/logo.png'),
        backgroundColor: Colors.deepPurpleAccent,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.black
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Department'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      drawer: maindrawer(

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
        leading:CircleAvatar(
          backgroundImage: AssetImage('assets/images/tnlogo1.png'),
          radius: 25.0,
        ),
        title:Text('Tamil Nadu Government Portal'),
        subtitle: Text('TN official website'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL20();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://nusrlranchi.in/wp-content/uploads/2021/05/TN-e-Pass.jpg'),
          radius: 25.0,
        ),
        title:Text('Tamil Nadu E-Registration'),
        subtitle: Text('TN E-PASS Registration'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL24();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://images.hindustantimes.com/img/2021/04/30/550x309/df1e7d32-a9f2-11eb-b6a7-87c39c54df04_1619814648861.jpg'),
          radius: 25.0,
        ),
        title:Text('Tamil Nadu Beds'),
        subtitle: Text('TN Covid Beds Availability'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL25();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://i.gadgets360cdn.com/large/cowin_digital_platform_small_1609751683235.jpg'),
          radius: 25.0,
        ),
        title:Text('COWIN'),
        subtitle: Text('Vaccination slots and certificates'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL26();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage('https://www.mckinsey.com/~/media/McKinsey/Industries/Chemicals/Our%20Insights/Successful%20agricultural%20transformations%20Six%20core%20elements%20of%20planning%20and%20delivery/Successful%20agricultural_1536x1536_400.jpg'),
          radius: 25.0,
        ),
        title:Text('Agriculture and allied sectors'),
        subtitle: Text('Agriculture and releated sectors'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>agriculture(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://www.lopol.org/sites/default/files/public/field/image/article/tamil-nadu-sc-st-list.jpg'),
          radius: 25.0,
        ),
        title:Text('Dept of BC,MBC & Minor Communities'),
        subtitle: Text('Backward class and miniority welfare'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>communitywelfare(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://switchpointcrc.org/wp-content/uploads/2019/07/CareerPathways.png'),
          radius: 25.0,
        ),
        title:Text('Labour and employment'),
        subtitle: Text('TN Labour and employment Oppurtunities '),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>employment(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://cdn3.vectorstock.com/i/1000x1000/27/72/currency-symbol-india-indian-rupee-inr-vector-14052772.jpg'),
          radius: 25.0,
        ),
        title:Text('Finance'),
        subtitle: Text(' Finance and Banking '),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>finance(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://c1.klipartz.com/pngpicture/489/419/sticker-png-cooperative-handshake-logo-business-company-partnership-organization-cooperation-coop-food-thumbnail.png'),
          radius: 25.0,
        ),
        title:Text('Food and co-operation'),
        subtitle: Text(' Co-operation, Food and Consumer Protection '),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>food(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://moderndiplomacy.eu/wp-content/uploads/2018/08/uzbekistan-forests.jpg'),
          radius: 25.0,
        ),
        title:Text('Forests Department'),
        subtitle: Text('Tamil Nadu Forest department'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>forest(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://static.mygov.in/rest/s3fs-public/styles/large-image/public/mygov_1447936457190667.jpg'),
          radius: 25.0,
        ),
        title:Text('Industrial promotion'),
        subtitle: Text(' Industries and Promotion'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>industrialpromotion(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://png.pngtree.com/png-clipart/20190520/original/pngtree-factory-industrial-logo-design-template-vector-png-image_3555607.jpg'),
          radius: 25.0,
        ),
        title:Text('Industries'),
        subtitle: Text('Industries of State Govt. Undertaking'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>industries(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://thumbs.dreamstime.com/z/urban-green-growth-city-skyline-bar-chart-rising-twig-leaves-as-arrow-background-chart-separate-layers-41857028.jpg'),
          radius: 25.0,
        ),
        title:Text('Infrastructure'),
        subtitle: Text('Housing and Urban Development'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>infrastructure(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/923624530425163777/HYRUoUQJ_400x400.jpg'),
          radius: 25.0,
        ),
        title:Text('Health and Family Welfare Department'),
        subtitle: Text('Tamil Nadu Medical faciities'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>medicine(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://www.pngkey.com/png/detail/269-2693984_lungta-handicraft-handicraft-logo.png'),
          radius: 25.0,
        ),
        title:Text(' Handlooms, Handicrafts, Textiles & Khadi Department'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>textiles(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://thegreaterindia.in/wp-content/uploads/2020/12/Pongal-2021-Tamil-Nadu-transport-dept-begins-online-ticket-booking.jpg'),
          radius: 25.0,
        ),
        title:Text('Transport Department'),
        subtitle: Text('Tamil Nadu state transport corporation'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>transport(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://elecpay.in/wp-content/uploads/2019/06/TNEB.jpg'),
          radius: 25.0,
        ),
        title:Text('Energy Department'),
        subtitle: Text('TNEB'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>energy(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://www.scout.org/sites/default/files/ECI-LOGO.png.e2e816e0d0bf886abbbbe6ccad4d459d%20%281%29.png'),
          radius: 25.0,
        ),
        title:Text('Public Election Department'),
        subtitle: Text('TN Election '),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>election(),));
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://media.9curry.com/uploads/organization/image/2825/tasmac-logo.png'),
          radius: 25.0,
        ),
        title:Text('Tamil Nadu State Marketing Corporation Limited'),
        subtitle: Text('Liquor Procurement & Marketing'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL1();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT00I_X4fRb2iZeK9A0uU51hc8zygOyCdaK3QjCYgf7iMYATAwQE8FI7NEpwE4kuP6bn_k&usqp=CAU'),
          radius: 25.0,
        ),
        title:Text('Tamil Nadu Tourism Development Corporation'),
        subtitle: Text('Tourism Promotion'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL2();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://www.indiantelevision.com/sites/default/files/styles/smartcrop_800x800/public/images/tv-images/2017/10/05/Tact-TV-Story%20%282%29.jpg?itok=ULVWZqWH'),
          radius: 25.0,
        ),
        title:Text('Tamil Nadu Arasu Cable TV Corporation Limited'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL3();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://sgp1.digitaloceanspaces.com/quickcompany/blogimage/article/image/1826/what-is-msme-india.png'),
          radius: 25.0,
        ),
        title:Text('Micro, Small and Medium Enterprises Department'),
        subtitle: Text('Commissionerate of Industries and Commerce '),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL4();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://www.tnsocialwelfare.org/img/logo2.png'),
          radius: 25.0,
        ),
        title:Text('Social Welfare & Nutrious meal program dept'),
        subtitle: Text('M.G.R Nutrious meal programme'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL5();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://resize.indiatvnews.com/en/resize/newbucket/715_-/2020/08/maharashtra-1597032982.jpg'),
          radius: 25.0,
        ),
        title:Text('Water Bodies of Tamil Nadu'),
        subtitle: Text('List of water bodies and all abouts'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL6();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://st3.depositphotos.com/6230340/19021/v/1600/depositphotos_190212220-stock-illustration-vector-gold-medal-with-a.jpg'),
          radius: 25.0,
        ),
        title:Text('Awards Portal'),
        subtitle: Text('Government of Tamil Nadu Awards'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL7();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://i.ytimg.com/vi/7B0yrKcBNOE/maxresdefault.jpg'),
          radius: 25.0,
        ),
        title:Text('Chief Minister Special Cell'),
        subtitle: Text('Online petition filling and monitoring'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL8();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: AssetImage('assets/images/tnlogo1.png'),
          radius: 25.0,
        ),
        title:Text('Tamil Arasu Publications'),
        subtitle: Text('Government News Reel'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL9();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://img.dtnext.in/Articles/2021/Jan/202101072116571547_Pongal-bonus-of-Rs-1000-announced-for-temple-staffs-by-the_SECVPF.gif'),
          radius: 25.0,
        ),
        title:Text('Hindu Religious and Charitable Endowments Department'),
        subtitle: Text('controls the temple administration within the state'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL10();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTARTpXOvw40Ecxo8LYbdsuhtDRg3WGSj5RckrL5NpLYeA8_OqCtpCCxLIbspXbmZgABpo&usqp=CAU'),
          radius: 25.0,
        ),
        title:Text('Municipal Administration and Water Supply Department '),
        subtitle: Text('Local and Municipal Department'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL11();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://www.tamilanwork.com/wp-content/uploads/2020/11/TNRD-Tiruvarur-Recruitment-2020-Inspiring-Overseer-Posts.png'),
          radius: 25.0,
        ),
        title:Text('Rural Development & Panchayat Raj Department'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL12();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://cdn.statcdn.com/Statistic/465000/467518-blank-754.png'),
          radius: 25.0,
        ),
        title:Text('Department of Economics and Statistics '),
        subtitle: Text('Details-TN Government Portal'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL13();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://thegardeningcook.com/wp-content/uploads/2020/10/protect-our-environment-fb.jpg'),
          radius: 25.0,
        ),
        title:Text('Environment Department'),
        subtitle: Text('Govt of TN Environment Department'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL14();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1049571891894079488/4ljdx2XV.jpg'),
          radius: 25.0,
        ),
        title:Text('Tamil Nadu e-Governance Agency'),
        subtitle: Text('e – Government'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL15();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://cdn.slidesharecdn.com/ss_thumbnails/tnxiifypoverview-140821004217-phpapp01-thumbnail-4.jpg?cb=1408581822'),
          radius: 25.0,
        ),
        title:Text('Tamil Nadu Planning Commission'),
        subtitle: Text('	Department of Finance'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL16();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: AssetImage('assets/images/tnlogo1.png'),
          radius: 25.0,
        ),
        title:Text('Tamil Nadu e-Governance Agency'),
        subtitle: Text('E-Sevai'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL17();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://images.theconversation.com/files/45159/original/rptgtpxd-1396254731.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=754&fit=clip'),
          radius: 25.0,
        ),
        title:Text('Education'),
        subtitle: Text('School Education Department'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL18();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://www.livechennai.com/businesslistings/News_photo/tnexams-14716.jpg'),
          radius: 25.0,
        ),
        title:Text('DIRECTORATE OF GOVERNMENT EXAMINATIONS'),
        subtitle: Text('Results'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL19();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://m.economictimes.com/thumb/msid-76740749,width-1200,height-900,resizemode-4,imgsize-197383/foodgrain-getty.jpg'),
          radius: 25.0,
        ),
        title:Text('Public Distribution System'),
        subtitle: Text('TNPDS'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL21();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://www.livechennai.com/businesslistings/News_photo/Tax9716.jpg'),
          radius: 25.0,
        ),
        title:Text('Commercial Taxes Department'),
        subtitle: Text('Tax and Services'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL22();
        },
      ),
      Divider(height: 5.0, color:Colors.black,),
      ListTile(
        leading:CircleAvatar(
          backgroundImage: NetworkImage('https://www.livechennai.com/businesslistings/News_photo/SDAT81116.jpg'),
          radius: 25.0,
        ),
        title:Text('Sports Development Authority of Tamilnadu'),
        subtitle: Text('SDAT'),
        trailing: Icon(Icons.arrow_forward),
        onTap:() {
          _launchURL23();
        },
      ),

    ],
  );
  return listview;
}
_launchURL1() async {
  const url = 'https://www.tasmac.co.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'https://www.ttdconline.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL3() async {
  const url = 'https://tactv.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL4() async {
  const url = 'https://www.msmeonline.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL5() async {
  const url = 'https://middaymeal.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL6() async {
  const url = 'https://www.tn.gov.in/waterbody.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL7() async {
  const url = 'https://awards.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL8() async {
  const url = 'http://cmcell.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL9() async {
  const url = 'https://www.tn.gov.in/detail_contact/4359/4';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL10() async {
  const url = 'https://tnhrce.gov.in/hrcehome/index.php';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL11() async {
  const url = 'https://www.tn.gov.in/maws/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL12() async {
  const url = 'https://tnrd.gov.in/index.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL13() async {
  const url = 'https://www.tn.gov.in/detail_contact/4195/4/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL14() async {
  const url = 'https://www.environment.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL15() async {
  const url = 'https://tnega.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL16() async {
  const url = 'http://www.spc.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL17() async {
  const url = 'https://www.tnesevai.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL18() async {
  const url = 'https://www.tn.gov.in/department/28';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL19() async {
  const url = 'http://www.dge.tn.gov.in/ta/relatedwebsites.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL20() async {
  const url = 'https://www.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL21() async {
  const url = 'https://www.tnpds.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL22() async {
  const url = 'https://ctd.tn.gov.in/Portal/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL23() async {
  const url = 'https://www.sdat.tn.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL24() async {
  const url = 'https://eregister.tnega.org/#/user/pass';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL25() async {
  const url = 'https://tncovidbeds.tnega.org/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL26() async {
  const url = 'https://www.cowin.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
