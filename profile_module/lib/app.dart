import 'package:flutter/material.dart';
//import 'package:flutter_application_1/widgets/stackWidget.dart';//
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_application_1/widgets/alert_dialog.dart';//

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LOYOLA COLLEGE",
      home: Scaffold(
        drawer: Drawer(),
        body: StackWidget(),
      ),
    );
  }
}

TextStyle titleStyle = new TextStyle(
    fontSize: 21, letterSpacing: 0.5, fontWeight: FontWeight.w400);
TextStyle subTitleStyle = new TextStyle(fontSize: 15, color: Colors.black54);

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
          child: Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width - 10,
            margin: EdgeInsets.only(right: 10, left: 10, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Container(
                      width: 190.0 / 1.5,
                      height: 190.0 / 1.5,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage(
                                "assets/GD.jpg",
                              )))),
                ),
                Container(
                    child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.transparent.withOpacity(0.03),
                        ),
                        child: Center(
                            child: Text('Profile',
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                    letterSpacing: 2,
                                    color: Color(0XFF6c757d),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30,
                                  ),
                                ))))),
              ],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2 + 90,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(right: 0, left: 0, top: 0),
          decoration: BoxDecoration(
            color: Colors.white,
            /* gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.topRight,
                      colors: [
                        Colors.white,
                        Colors.lightBlue.shade100,
                        Colors.lightBlue,
                        Colors.blue,
                      ]),*/
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ListView(
              padding: EdgeInsets.only(left: 0),
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                SizedBox(height: 10),
                ListTile(
                  tileColor: Colors.blue,
                  leading: const Icon(
                    Icons.person_rounded,
                    size: 38,
                  ),
                  title: Text('Name',
                      style: GoogleFonts.montserrat(textStyle: titleStyle)),
                  subtitle: Text('E. Gangadevi',
                      style: GoogleFonts.montserrat(textStyle: subTitleStyle)),
                ),
                ListTile(
                  tileColor: Colors.blue,
                  leading: const Icon(
                    Icons.card_membership,
                    size: 38,
                  ),
                  title: Text('ID',
                      style: GoogleFonts.montserrat(textStyle: titleStyle)),
                  subtitle: Text('19-UCA-107',
                      style: GoogleFonts.montserrat(textStyle: subTitleStyle)),
                ),
                ListTile(
                  tileColor: Colors.blue,
                  leading: const Icon(
                    Icons.date_range,
                    size: 38,
                  ),
                  title: Text('D.O.B',
                      style: GoogleFonts.montserrat(textStyle: titleStyle)),
                  subtitle: Text('06/05/2001',
                      style: GoogleFonts.montserrat(textStyle: subTitleStyle)),
                ),
                ListTile(
                  tileColor: Colors.blue,
                  leading: const Icon(
                    Icons.female,
                    size: 38,
                  ),
                  title: Text('Gender',
                      style: GoogleFonts.montserrat(textStyle: titleStyle)),
                  subtitle: Text('Female',
                      style: GoogleFonts.montserrat(textStyle: subTitleStyle)),
                ),
                ListTile(
                  tileColor: Colors.blue,
                  leading: const Icon(
                    Icons.cast_for_education,
                    size: 38,
                  ),
                  title: Text('Department',
                      style: GoogleFonts.montserrat(textStyle: titleStyle)),
                  subtitle: Text('Computer Science',
                      style: GoogleFonts.montserrat(textStyle: subTitleStyle)),
                ),
                ListTile(
                  tileColor: Colors.blue,
                  leading: const Icon(
                    Icons.star_half,
                    size: 38,
                  ),
                  title: Text('Shift',
                      style: GoogleFonts.montserrat(textStyle: titleStyle)),
                  subtitle: Text('II',
                      style: GoogleFonts.montserrat(textStyle: subTitleStyle)),
                ),
                ListTile(
                  tileColor: Colors.blue,
                  leading: const Icon(
                    Icons.email_rounded,
                    size: 38,
                  ),
                  title: Text('E-mail ID',
                      style: GoogleFonts.montserrat(textStyle: titleStyle)),
                  subtitle: Text('Chinhchingmangmang@gmail.com',
                      style: GoogleFonts.montserrat(textStyle: subTitleStyle)),
                ),
              ]),
        )
      ]
          //)//
          ),
    );
  }
}
