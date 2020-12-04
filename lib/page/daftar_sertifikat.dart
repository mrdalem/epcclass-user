part of 'pages.dart';

class DaftarSertifPage extends StatefulWidget{
  @override
  _DaftarSertifPageState createState() => _DaftarSertifPageState();
}

class _DaftarSertifPageState extends State<DaftarSertifPage>{
  Color blue    = const Color(0xff1B44A6);
  Color orange  = const Color(0xffD98E28);

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
          appBar:
          PreferredSize(
            preferredSize: Size(double.infinity, 70),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: this.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0,3),
                    spreadRadius: 1,
                    blurRadius: 5,
                  )
                ]
              ),
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
                            Text("Sertifikat", textAlign: TextAlign.center , style: TextStyle(
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
                                          clicked(context, "Diklik");
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
                  ],
                ),
              ),
            ),
          ),
          body:
          Stack(
            children: <Widget>[
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

                              },
                              child: Container(
                                alignment: Alignment.center,
                                color: this.blue,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Text("URUTKAN", style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white
                                      )),
                                    ),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                        child: Icon(Icons.sort, color: Colors.white)
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                  backgroundColor: Color(0xffE5E5E5),
                  body:
                  ListView(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    shrinkWrap: true,
                    children: [
                        Column(
                          children: [
                            //box
                            Container(
                              padding: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 10),
                              decoration: BoxDecoration(
                                border: Border(
                                bottom: BorderSide( //                   <--- left side
                                  color: Colors.grey,
                                  width: 0.4,
                                ),
                                ),
                              ),
                              child:
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                      Flexible(
                                        flex: 3,
                                        child:
                                          Stack(
                                            overflow: Overflow.visible,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(20),
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [Colors.white, Color(0xffE5E5E5)]
                                                  ),
                                                  borderRadius: BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 3,
                                                      spreadRadius: 1,
                                                      offset: Offset(0,2),
                                                      color: Color(0xffE5E5E5)
                                                    )
                                                  ]
                                                ),
                                                child: Image(image: AssetImage("assets/icon/ico_7.png"), height: 60,),
                                              ),
                                              Positioned(
                                                top: -5,
                                                right: -10,
                                                child: Container(
                                                  width: 20,
                                                  height:20,
                                                  decoration: BoxDecoration(
                                                    color: this.orange,
                                                    borderRadius: BorderRadius.circular(50),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                      ),
                                      Flexible(
                                        flex: 7,
                                        child:
                                          Padding(
                                            padding: EdgeInsets.only(left: 30,),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Metode Kontruksi", style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                                SizedBox(height: 8,),
                                                Text("Nomor: xxxx-xxxx-xxxx", style: TextStyle(
                                                  fontSize: 13,
                                                ),),
                                                SizedBox(height: 5,),
                                                Text("17:41 WIB  -  11 OKT 2020 ", style: TextStyle(
                                                  fontSize: 14,
                                                ),),
                                                SizedBox(height: 20,),
                                                Row(
                                                  mainAxisSize:MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      fit: FlexFit.loose,
                                                      child: RaisedButton(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                              side: BorderSide(color: Colors.grey[400])),
                                                          onPressed: () {},
                                                          color: Colors.grey[400],
                                                          textColor: Colors.white,
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("Unduh",
                                                                  style: TextStyle(fontSize: 12, color: Color(0xff474646))),
                                                              Icon(Icons.keyboard_arrow_down_outlined, size: 13, color: Color(0xff474646),)
                                                            ],
                                                          )
                                                      ),
                                                    ),
                                                    SizedBox(width: 10,),
                                                    Flexible(
                                                      fit: FlexFit.loose,
                                                      child: RaisedButton(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                              side: BorderSide(color: Colors.grey[400])),
                                                          onPressed: () {},
                                                          color: Colors.grey[400],
                                                          textColor: Colors.white,
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("Berbagi",
                                                                  softWrap: false,
                                                                  overflow: TextOverflow.fade,
                                                                  style: TextStyle(fontSize: 12, color: Color(0xff474646))),
                                                              Icon(Icons.share,size: 12,  color: Color(0xff474646),)
                                                            ],
                                                          )
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )
                                          )
                                    ),
                                  ],
                                )
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide( //                   <--- left side
                                      color: Colors.grey,
                                      width: 0.4,
                                    ),
                                  ),
                                ),
                                child:
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Flexible(
                                        flex: 3,
                                        child:
                                        Stack(
                                          overflow: Overflow.visible,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                      begin: Alignment.topCenter,
                                                      end: Alignment.bottomCenter,
                                                      colors: [Colors.white, Color(0xffE5E5E5)]
                                                  ),
                                                  borderRadius: BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        spreadRadius: 1,
                                                        offset: Offset(0,2),
                                                        color: Color(0xffE5E5E5)
                                                    )
                                                  ]
                                              ),
                                              child: Image(image: AssetImage("assets/icon/ico_8.png"), height: 60,),
                                            ),
                                          ],
                                        )
                                    ),
                                    Flexible(
                                        flex: 7,
                                        child:
                                        Padding(
                                            padding: EdgeInsets.only(left: 30,),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Manajemen Risiko", style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                                SizedBox(height: 8,),
                                                Text("Nomor: xxxx-xxxx-xxxx", style: TextStyle(
                                                  fontSize: 13,
                                                ),),
                                                SizedBox(height: 5,),
                                                Text("21:37 WIB  -  6 OKT 2020  ", style: TextStyle(
                                                  fontSize: 14,
                                                ),),
                                                SizedBox(height: 20,),
                                                Row(
                                                  mainAxisSize:MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      fit: FlexFit.loose,
                                                      child: RaisedButton(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                              side: BorderSide(color: Colors.grey[400])),
                                                          onPressed: () {},
                                                          color: Colors.grey[400],
                                                          textColor: Colors.white,
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("Unduh",
                                                                  style: TextStyle(fontSize: 12, color: Color(0xff474646))),
                                                              Icon(Icons.keyboard_arrow_down_outlined, size: 13, color: Color(0xff474646),)
                                                            ],
                                                          )
                                                      ),
                                                    ),
                                                    SizedBox(width: 10,),
                                                    Flexible(
                                                      fit: FlexFit.loose,
                                                      child: RaisedButton(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(18.0),
                                                              side: BorderSide(color: Colors.grey[400])),
                                                          onPressed: () {},
                                                          color: Colors.grey[400],
                                                          textColor: Colors.white,
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("Berbagi",
                                                                  softWrap: false,
                                                                  overflow: TextOverflow.fade,
                                                                  style: TextStyle(fontSize: 12, color: Color(0xff474646))),
                                                              Icon(Icons.share,size: 12,  color: Color(0xff474646),)
                                                            ],
                                                          )
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )
                                        )
                                    ),
                                  ],
                                )
                            ),
                          ],
                        )
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

