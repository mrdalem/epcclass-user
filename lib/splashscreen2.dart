import './splashscreen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';

class SplashScreenTwo extends StatefulWidget {
  @override
  _SplashScreenTwoState createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {
  var blue = const Color(0xff1B44A6);
  var orange = const Color(0xffD98E28);
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ));
    /** membuat element logo atas**/
    final logoatas = Container(
      transform: Matrix4.translationValues(0.0, -50.0, 0.0),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 80.0,
          child: Image.asset('assets/images/logowhite.png'),
        ),
      ),
    );

    /** membuat element text 1 , padding left,top,right,bottom**/
    final text1 = Container(
      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
        child: Text("No Internet, No problem",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            )),
      ),
    );

    /** membuat element text 2 **/
    final text2 = Padding(
      padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
      child: Text(
          "Unduh materi dan pelajari dimana\nsaja, bahkan ke pelosok daerah\nsekalipun.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
            height: 1.5,
            letterSpacing: 0.5,
          )),
    );

    /** eksekusi semua **/
    return MaterialApp(
      title: "Splash2",
      home: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/splash2.png',
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    const Color(0xff1B44A6).withOpacity(0.3),
                    const Color(0xffD79740).withOpacity(1),
                  ],
                  stops: [
                    0.0,
                    1.0
                  ])),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                logoatas,
                SizedBox(height: 100.0),
                text1,
                text2,
              ],
            ),
          ),
          bottomNavigationBar: Container(
              height: 56,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      color: this.orange,
                      child: Text("LEWATI",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white)),
                    ),
                  )),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SplashScreenThree()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: this.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Text("SELANJUTNYA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Colors.white)),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Icon(Icons.arrow_forward,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ]),
    );
  }
}
