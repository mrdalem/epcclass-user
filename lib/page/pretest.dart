part of 'pages.dart';

class PreTestPage extends StatefulWidget{
  @override
  _PreTestPageState createState() => _PreTestPageState();
}

class _PreTestPageState extends State<PreTestPage>{
  var blue    = const Color(0xff1B44A6);
  var orange  = const Color(0xffD98E28);

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
              color: this.blue,
              width: MediaQuery.of(context).size.width,
              child: Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.navigate_before,size: 40,color: Colors.transparent,),
                      Text("4 Manajemen Logist...",textAlign: TextAlign.center , style: TextStyle(
                          fontSize: 18,
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
                  ],
                ),
              ),
            ),
          ),
          body: Stack(
            children: <Widget>[
              Scaffold(
                body:
                Container( // menu atas
                  decoration: BoxDecoration(
                      color: this.blue,
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
                  height: (MediaQuery.of(context).orientation == Orientation.portrait)? MediaQuery.of(context).size.height / 4 : MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Text("Superintendent", style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                                MaterialPageRoute(builder: (context) => KategoriPage()),
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
                                MaterialPageRoute(builder: (context) => PreTestPage2()),
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
                                    child: Text("MULAI!", style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white
                                    )),
                                  )
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
                  Container(
                    margin: EdgeInsets.only(top: (MediaQuery.of(context).orientation == Orientation.portrait)? (MediaQuery.of(context).size.height / 5)-75 : (MediaQuery.of(context).size.height / 7)),
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
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
                                      child:  Text("Materi", style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 14), textAlign: TextAlign.center,)
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
                                      child:  Text("Post-test", style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 14), textAlign: TextAlign.center,)
                                  ),
                                ]
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Card(
                            color: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 18, left: 10, right: 10, bottom: 10),
                                  child: Text('Aturan Pre-test', textAlign: TextAlign.center, style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                  ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                                  child:
                                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. At vel laoreet sit nisi. Quis pellentesque augue eu, pulvinar elit amet ornare vulputate ipsum. Accumsan aliquet elementum sem posuere in id. Posuere est id bibendum arcu lacinia dolor.', textAlign: TextAlign.center, style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff474646)
                                  )),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 18, left: 10, right: 10, bottom: 10),
                                  child: Text('5 Menit', textAlign: TextAlign.center, style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                                  child:
                                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. At vel laoreet sit nisi. Quis pellentesque augue eu, pulvinar elit amet ornare vulputate ipsum. Accumsan aliquet elementum sem posuere in id. Posuere est id bibendum arcu lacinia dolor.', textAlign: TextAlign.center, style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff474646)
                                  )),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                                  child:
                                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. At vel laoreet sit nisi. Quis pellentesque augue eu, pulvinar elit amet ornare vulputate ipsum. Accumsan aliquet elementum sem posuere in id. Posuere est id bibendum arcu lacinia dolor.', textAlign: TextAlign.center, style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff474646)
                                  )),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                                  child:
                                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. At vel laoreet sit nisi. Quis pellentesque augue eu, pulvinar elit amet ornare vulputate ipsum. Accumsan aliquet elementum sem posuere in id. Posuere est id bibendum arcu lacinia dolor.', textAlign: TextAlign.center, style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff474646)
                                  )),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 33,
                                      child: Padding(
                                        padding: EdgeInsets.all(15),
                                        child: Image(
                                          image: AssetImage('assets/icon/ico_bumn.png'),
                                          height: 25,
                                          width: 80,
                                        )
                                      )
                                    ),
                                    Flexible(
                                        flex: 33,
                                        child: Padding(
                                            padding: EdgeInsets.all(15),
                                            child: Image(
                                              image: AssetImage('assets/icon/ico_waskita.png'),
                                              height: 25,
                                              width: 80,
                                            )
                                        )
                                    ),
                                    Flexible(
                                        flex: 33,
                                        child: Padding(
                                            padding: EdgeInsets.all(15),
                                            child: Image(
                                              image: AssetImage('assets/icon/ico_epcd.png'),
                                              height: 25,
                                              width: 80,
                                            )
                                        )
                                    ),
                                  ],
                                )
                              ],
                            )
                        ),
                      ],// use this
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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