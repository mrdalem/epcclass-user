part of 'pages.dart';

class HasilPage extends StatefulWidget{
  @override
  _HasilPageState createState() => _HasilPageState();
}

class _HasilPageState extends State<HasilPage>{
  Color blue    = const Color(0xff1B44A6);
  Color orange  = const Color(0xffD98E28);

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
          appBar:
          PreferredSize(
            preferredSize: Size(double.infinity, 100),
            child: Container(
              color: this.orange,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.navigate_before,size: 40,color: Colors.transparent,),
                            Text("2 Manajemen Risiko", textAlign: TextAlign.center , style: TextStyle(
                                fontSize: 22,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),
                            PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                      child: InkWell(
                                        onTap: () {
                                          clicked2(context, "Diklik");
                                        },
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.close, color: Colors.black,
                                            ),
                                            Text("Close")
                                          ],
                                        ),
                                      )),
                                ];
                              },
                              color: Colors.white,
                              icon: Icon(
                                Icons.more_vert, color: Colors.white,
                              ),
                            )
                          ]
                      ),
                    ),
                    Container(
                      child: Text("Superintendent", style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),),
                    )
                  ],
                ),
              ),
            ),
          ),
          body:
          Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                height: 100,
                child: Container( // menu atas
                  decoration: BoxDecoration(
                      color: this.orange,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0,2),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      )
                  ),
                  padding: EdgeInsets.fromLTRB(4.0, 0, 4.0, 10),
                  // height: (MediaQuery.of(context).orientation == Orientation.portrait)? MediaQuery.of(context).size.height / 4 : MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Scaffold(
                  bottomNavigationBar: Container(
                      height: 56,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 50,
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => BerandaPage()),
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
                                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: Icon(Icons.arrow_back, color: Colors.white)
                                    ),
                                    Container(
                                      child: Text("KEMBALI", style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white
                                      )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 50,
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => BerandaPage()),
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
                                      child: Text("BERANDA", style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white
                                      )),
                                    ),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: Icon(Icons.home_rounded, color: Colors.white)
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                  backgroundColor: Colors.transparent,
                  body:
                  SingleChildScrollView(
                      child:
                      Container(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.all(2),
                                            child:  Text("Pre-test", style: TextStyle(color: Colors.white, fontSize: 14), textAlign: TextAlign.center,)
                                        ),
                                        Padding(
                                            padding: EdgeInsets.all(2),
                                            child:  Icon(Icons.chevron_right, size: 15, color: Colors.white,)
                                        ),
                                      ]
                                  ),
                                  Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.all(2),
                                            child:  Text("Materi", style: TextStyle(color: Colors.white, fontSize: 14), textAlign: TextAlign.center,)
                                        ),
                                        Padding(
                                            padding: EdgeInsets.all(2),
                                            child:  Icon(Icons.chevron_right, size: 15, color: Colors.white.withOpacity(0.5),)
                                        ),
                                      ]
                                  ),
                                  Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.all(2),
                                            child:  Text("Post-test", style: TextStyle(color: Colors.white, fontSize: 14), textAlign: TextAlign.center,)
                                        ),
                                      ]
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                        offset: Offset(0,3),
                                        color: Colors.grey[400],
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox( height: 10.0),
                                      Center(
                                        child: Text("Selamat!", style: TextStyle(
                                          color: Color(0xff474646),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      ),
                                      SizedBox( height: 10.0),
                                      Center(
                                        child: Text("Anda memperoleh\nnilai pada materi ini yaitu",textAlign: TextAlign.center, style: TextStyle(
                                          color: Color(0xff474646),
                                          fontSize: 14,
                                        ),),
                                      ),
                                      SizedBox( height: 5.0),
                                      Center(
                                        child: Text("48",textAlign: TextAlign.center, style: TextStyle(
                                          color: this.orange,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      ),
                                      SizedBox( height: 10.0),
                                      Center(
                                        child: Image(image: AssetImage("assets/icon/ico_6.png"),height: 100,)
                                      ),
                                      SizedBox( height: 15.0),
                                      Center(
                                          child: Container(
                                            child:
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(15),
                                                  child: Image(image: AssetImage("assets/icon/ico_bumn.png"),height: 20,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(15),
                                                  child: Image(image: AssetImage("assets/icon/ico_waskita.png"),height: 25,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(15),
                                                  child: Image(image: AssetImage("assets/icon/ico_epcd.png"),height: 25,),
                                                ),
                                              ],
                                            )
                                          )
                                      ),
                                      SizedBox( height: 10.0),
                                      Padding(
                                          padding: EdgeInsets.only(left: 20, right: 20),
                                          child: Text("Poin anda telah mencukupi untuk\ndapat dinyatakan lulus pada\nkompetensi ini.",textAlign: TextAlign.center, style: TextStyle(
                                            color: Color(0xff474646),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),),
                                      ),
                                      SizedBox( height: 20.0),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, right: 15),
                                        child: Text("Sertifikat dapat anda lihat di menu pada\nberanda aplikasi.",textAlign: TextAlign.center, style: TextStyle(
                                          color: Color(0xff474646),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),),
                                      ),
                                      SizedBox( height: 20.0),
                                    ],
                                  )
                              ),
                            ],
                          )
                      )
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void clicked4(BuildContext context, menu) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(menu),
      action: SnackBarAction(
          label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}