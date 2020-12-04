part of 'pages.dart';

class BerandaPage extends StatelessWidget {
  // getData() {
  //
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beranda',
      home: _BerandaStatePage(),
    );
  }
}

class _BerandaStatePage extends StatefulWidget {
  @override
  __BerandaStatePageState createState() => __BerandaStatePageState();
}

class __BerandaStatePageState extends State<_BerandaStatePage> {
  var blue = const Color(0xff1B44A6);
  var orange = const Color(0xffD98E28);
  final FirebaseAuth auth = FirebaseAuth.instance;

  String namaAkun;

  CollectionReference users = FirebaseFirestore.instance.collection('pengguna');
  Stream collectionStream =
      FirebaseFirestore.instance.collection('pengguna').snapshots();

  @override
  Widget build(BuildContext context) {
    String getData() {
      User user = auth.currentUser;

      namaAkun = user.email;

      users
      .where('email', isEqualTo: user.email)
      //     .get()
      //     .then((QuerySnapshot qs) => {
      //           qs.docs.forEach((element) {
      //             namaAkun = element['nama'];
      //           })
      //         });

      return namaAkun;
    }

    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ));
    return MaterialApp(
      home: new Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              color: this.blue,
            ),
            SafeArea(
                child: Container(
              color: Color(0xffFCFCFF),
            )),
            ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(4.0, 278.0, 4.0, 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KompetensiPage()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(0, 0),
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: EdgeInsets.fromLTRB(39, 26, 39, 18),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/icon/ico_1.png',
                                width: 50,
                              ),
                              Text(
                                "Kompetensi",
                                style: TextStyle(
                                    color: Color(0xff474646),
                                    fontSize: 15,
                                    height: 2.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      new GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DaftarSertifPage()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(0, 0),
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                          child: Row(
                            children: [
                              Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        'assets/icon/ico_2.png',
                                        width: 50,
                                      ),
                                      Text(
                                        "Sertifikat",
                                        style: TextStyle(
                                            color: Color(0xff474646),
                                            fontSize: 15,
                                            height: 2),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    right: -40,
                                    top: -35,
                                    child: Container(
                                        width: 20.0,
                                        height: 20.0,
                                        decoration: BoxDecoration(
                                            color: this.orange,
                                            borderRadius:
                                                BorderRadius.circular(15.0)),
                                        child: Center(
                                          child: Text(
                                            "2",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(4.0, 20.0, 4.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DaftarMateriPage()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(0, 0),
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/icon/ico_3.png',
                                width: 50,
                              ),
                              Text(
                                "Materi",
                                style: TextStyle(
                                    color: Color(0xff474646),
                                    fontSize: 15,
                                    height: 2.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      new GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AkunPage()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(0, 0),
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/icon/ico_4.png',
                                width: 50,
                              ),
                              Text(
                                "Akun",
                                style: TextStyle(
                                    color: Color(0xff474646),
                                    fontSize: 15,
                                    height: 2),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                new GestureDetector(
                  onTap: () {
                    users
                        .where('nip', isEqualTo: 'W172308951')
                        .get()
                        .then((QuerySnapshot qs) => {
                              qs.docs.forEach((element) {
                                print(element['nama']);
                              })
                            });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(0, 0),
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                    child: Column(
                      children: [
                        Text(
                          "Tester Button",
                          style: TextStyle(
                              color: Color(0xff474646),
                              fontSize: 15,
                              height: 2),
                        ),
                      ],
                    ),
                  ),
                ),

                // Container(
                //   margin: EdgeInsets.fromLTRB(4.0, 10.0, 4.0, 0),
                //   padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         "Lanjutkan",
                //         style: TextStyle(
                //             color: Color(0xff474646),
                //             fontSize: 16,
                //             fontWeight: FontWeight.bold,
                //             height: 2),
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
                //   margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.2),
                //         spreadRadius: 2,
                //         blurRadius: 8,
                //         offset: Offset(0, 0),
                //       )
                //     ],
                //     borderRadius: BorderRadius.all(Radius.circular(15)),
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     // crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Stack(overflow: Overflow.visible, children: [
                //         Positioned(
                //           top: -37.4,
                //           child: Text(
                //             "4",
                //             style: TextStyle(
                //               fontWeight: FontWeight.w500,
                //               fontSize: 16,
                //             ),
                //           ),
                //         ),
                //         SizedBox(),
                //       ]),
                //       Column(
                //         children: [
                //           Container(
                //               padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                //               decoration: BoxDecoration(
                //                   border: Border(
                //                 right: BorderSide(
                //                   color: Color(0xffC4C4C4),
                //                   width: 0.5,
                //                 ),
                //               )),
                //               child: Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Text(
                //                     "Spesifikasi dan Material...",
                //                     style: TextStyle(
                //                       fontWeight: FontWeight.w500,
                //                       fontSize: 16,
                //                     ),
                //                   ),
                //                   Text(
                //                     "Video 14:47 Menit",
                //                     style: TextStyle(fontSize: 12, height: 1.3),
                //                   ),
                //                   Text(
                //                     "Poin 20",
                //                     style: TextStyle(fontSize: 12, height: 1.3),
                //                   ),
                //                   SizedBox(
                //                     height: 10,
                //                   ),
                //                   Row(
                //                     children: [
                //                       Row(
                //                         children: [
                //                           Text(
                //                             "Pre-test",
                //                             style: TextStyle(
                //                               fontWeight: FontWeight.bold,
                //                               fontSize: 10,
                //                               color: Color(0xff1B44A6),
                //                             ),
                //                           ),
                //                           Padding(
                //                             padding: EdgeInsets.all(2),
                //                             child: Icon(
                //                               Icons.check_circle_outline,
                //                               size: 10,
                //                               color: Color(0xff1B44A6),
                //                             ),
                //                           ),
                //                         ],
                //                       ),
                //                       Padding(
                //                         padding:
                //                             EdgeInsets.fromLTRB(20, 0, 10, 0),
                //                         child: Text(
                //                           "Materi",
                //                           style: TextStyle(
                //                             fontWeight: FontWeight.w400,
                //                             fontSize: 10,
                //                             color: Color(0xffC4C4C4),
                //                           ),
                //                         ),
                //                       ),
                //                       Padding(
                //                         padding:
                //                             EdgeInsets.fromLTRB(10, 0, 20, 0),
                //                         child: Text(
                //                           "Post-test",
                //                           style: TextStyle(
                //                             fontWeight: FontWeight.w400,
                //                             fontSize: 10,
                //                             color: Color(0xffC4C4C4),
                //                           ),
                //                         ),
                //                       ),
                //                     ],
                //                   )
                //                 ],
                //               )),
                //         ],
                //       ),
                //       Column(
                //         children: [
                //           Text(
                //             "Waktu tersisa",
                //             style: TextStyle(
                //               fontSize: 10,
                //             ),
                //           ),
                //           Text(
                //             "04 : 32",
                //             style: TextStyle(
                //                 fontWeight: FontWeight.w500,
                //                 fontSize: 20,
                //                 height: 1.5,
                //                 color: Color(0xffD98E28)),
                //           ),
                //           Row(
                //             children: [
                //               Padding(
                //                 padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                //                 child: Text(
                //                   "Menit",
                //                   style: TextStyle(
                //                     fontSize: 5,
                //                   ),
                //                 ),
                //               ),
                //               Padding(
                //                 padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                //                 child: Text(
                //                   "Detik",
                //                   style: TextStyle(
                //                     fontSize: 5,
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           )
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
            Container(
              // menu atas
              decoration: BoxDecoration(
                  color: this.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )),
              padding: EdgeInsets.fromLTRB(4.0, 20, 4.0, 30),
              height: 280,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Image.asset(
                    'assets/images/logowhite.png',
                    height: 28.0,
                    width: 150.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/user_pic.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 0,
                              child: Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                    color: this.orange,
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Icon(
                                  Icons.settings,
                                  color: Color(0xff474646),
                                  size: 20.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(getData(),
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white)),
                          Text("W14291083",
                              style: TextStyle(
                                  fontSize: 10,
                                  height: 1.8,
                                  color: Colors.white)),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ButtonTheme(
                        minWidth: 50.0,
                        height: 25.0,
                        buttonColor: Color(0xff0B3C95),
                        child: RaisedButton(
                          elevation: 4,
                          padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                          onPressed: () {
                            context.read<AuthenticationService>().signOut();
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text("Keluar",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "KOMPETENSI",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              letterSpacing: 1,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Stack(
                              overflow: Overflow.visible,
                              children: [
                                Text(
                                  "0",
                                  style: TextStyle(
                                    color: this.orange,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    height: 1.5,
                                  ),
                                ),
                                Positioned(
                                  right: -15,
                                  bottom: 0,
                                  child: Text(
                                    "/ 5",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        decoration: BoxDecoration(
                            border: Border(
                          left: BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 0.5),
                            width: 1.0,
                          ),
                          right: BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 0.5),
                            width: 1.0,
                          ),
                        )),
                        child: Column(
                          children: [
                            Text(
                              "TOTAL NILAI",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                letterSpacing: 1,
                              ),
                            ),
                            Text(
                              "48",
                              style: TextStyle(
                                color: this.orange,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "PERINGKAT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            "89",
                            style: TextStyle(
                              color: this.orange,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
