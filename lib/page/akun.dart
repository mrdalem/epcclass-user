part of 'pages.dart';

class AkunPage extends StatefulWidget {
  @override
  _AkunPageState createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  Color blue = const Color(0xff1B44A6);
  Color orange = const Color(0xffD98E28);

  void clicked(BuildContext context, menu) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(menu),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ));

    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, 100),
            child: Container(
              color: this.blue,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.navigate_before,
                      size: 40,
                      color: Colors.transparent,
                    ),
                    Text(
                      "Akun",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    PopupMenuButton(
                      itemBuilder: (BuildContext context) {
                        return [
                          PopupMenuItem(
                              child: InkWell(
                            onTap: () {
                              clicked(context, "Diklik");
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.close,
                                  color: Colors.black,
                                ),
                                Text("Close")
                              ],
                            ),
                          )),
                        ];
                      },
                      color: Colors.white,
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          body: Stack(
            children: <Widget>[
              Scaffold(
                body: Container(
                  // menu atas
                  decoration: BoxDecoration(
                      color: this.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      )),
                  padding: EdgeInsets.fromLTRB(4.0, 0, 4.0, 10),
                  height: 100,
                ),
              ),
              Scaffold(
                  bottomNavigationBar: Container(
                      height: 56,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BerandaPage()),
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                color: this.orange,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: Icon(Icons.arrow_back,
                                            color: Colors.white)),
                                    Container(
                                      child: Text("KEMBALI",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  backgroundColor: Colors.transparent,
                  body: Container(
                    margin: EdgeInsets.only(top: 40),
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        Stack(
                          children: [
                            Card(
                                color: Colors.white,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: EdgeInsets.only(
                                    left: 20, right: 20, bottom: 10),
                                child: Container(
                                    height: MediaQuery.of(context).size.height /
                                        1.4,
                                    padding: EdgeInsets.all(15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: CircleAvatar(
                                            radius: 40, // border
                                            backgroundColor: Colors.white,
                                            child: CircleAvatar(
                                              radius: 40, // scale
                                              backgroundImage: AssetImage(
                                                  'assets/images/user_pic2.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Center(
                                          child: Text(
                                            "Fransiskus Bala Gening",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "W14291083",
                                              style: TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Badge(
                                              toAnimate: false,
                                              shape: BadgeShape.square,
                                              badgeColor: this.orange,
                                              elevation: 0,
                                              padding: EdgeInsets.only(
                                                  left: 8,
                                                  top: 2,
                                                  bottom: 2,
                                                  right: 8),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              badgeContent: Text('User',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          "Informasi",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Tanggal input",
                                                  style: TextStyle(height: 1.5),
                                                ),
                                                Text(
                                                  "Jabatan ",
                                                  style: TextStyle(height: 1.5),
                                                ),
                                                Text(
                                                  "Waktu menonton",
                                                  style: TextStyle(height: 1.5),
                                                ),
                                                Text(
                                                  "Sertifikat",
                                                  style: TextStyle(height: 1.5),
                                                ),
                                                Text(
                                                  "Total nilai",
                                                  style: TextStyle(height: 1.5),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "10-10-2020",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      height: 1.5),
                                                ),
                                                Text(
                                                  "Superintendent",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      height: 1.5),
                                                ),
                                                Text(
                                                  "221 menit",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      height: 1.5),
                                                ),
                                                Text(
                                                  "2",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      height: 1.5),
                                                ),
                                                Text(
                                                  "65 (peringkat 21)",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      height: 1.5),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ))),
                            Positioned(
                              bottom: 20,
                              left: 35,
                              right: 35,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                color: this.blue,
                                textColor: Colors.white,
                                padding: EdgeInsets.all(8.0),
                                onPressed: () {},
                                child: Text(
                                  "Keluar/Logout",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ], // use this
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
