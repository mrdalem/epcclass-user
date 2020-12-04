part of 'pages.dart';

class PreTestPage2 extends StatefulWidget {
  @override
  _PreTestPage2State createState() => _PreTestPage2State();
}

class Soal {
  String soal, pil1, pil2, pil3, pil4;

  Soal({this.soal, this.pil1, this.pil2, this.pil3, this.pil4});
}

class _PreTestPage2State extends State<PreTestPage2> {
  var blue = const Color(0xff1B44A6);
  var orange = const Color(0xffD98E28);
  bool isSelected = false;
  //random list
  Random random = new Random();

  Soal soal = new Soal(
    soal: 'Berapakah 1 tambah 1 ?',
    pil1: 'Lorem ipsum dolor sit amet, consectetur adipiscing elitA. ',
    pil2: 'Lorem ipsum dolor sit amet, consectetur adipiscing elitB. ',
    pil3: 'Lorem ipsum dolor sit amet, consectetur adipiscing elitC. ',
    pil4: 'Lorem ipsum dolor sit amet, consectetur adipiscing elitD. ',
  );

  List option = ['A. ', 'B. ', 'C. ', 'D. '];
  List jwb() {
    var lists = [
      soal.pil1,
      soal.pil2,
      soal.pil3,
      soal.pil4,
    ];
    return lists;
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ));

    var jawaban = jwb().toList()..shuffle();

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
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
                              "04:23",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22,
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
                                      clicked2(context, "Diklik");
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
                          ]),
                    ),
                    Container(
                      child: Text(
                        "Waktu tersisa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          body: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                height: 70,
                child: Container(
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => KategoriPage()),
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
                          Expanded(
                            flex: 50,
                            child: InkWell(
                              onTap: () {
                                alertCustom(context, 'Yakin proses\njawaban?',
                                    'Setelah terproses, jawaban akan dinilai dan tidak dapat diubah kembali.\nLanjutkan?');
                              },
                              child: Container(
                                alignment: Alignment.center,
                                color: this.blue,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                          "proses jawaban".toUpperCase(),
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
                  body: SingleChildScrollView(
                      child: Container(
                          child: Column(
                    children: <Widget>[
                      Card(
                          color: Colors.white,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 10),
                          child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      'Pre-test',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color(0xff474646),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 37, top: 27),
                                    child: Text(
                                      'Soal 1 dari 2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xff474646),
                                      ),
                                    ),
                                  ),
                                  //soal disini nantinya
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            bottom: 10,
                                          ),
                                          child: Text(soal.soal,
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xff474646))),
                                        ),
                                      ),
                                      Container(
                                          child: ListView(
                                        shrinkWrap: true,
                                        children: jawaban
                                            .asMap()
                                            .map((i, row) => MapEntry(
                                                i,
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 10),
                                                  padding: EdgeInsets.only(
                                                      top: 5,
                                                      bottom: 5,
                                                      left: 15,
                                                      right: 15),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        color:
                                                            Colors.grey[400]),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: RichText(
                                                      text: TextSpan(
                                                          text: option[i]
                                                              .toString(),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          children: <TextSpan>[
                                                        TextSpan(
                                                            text:
                                                                row.toString(),
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ))
                                                      ])),
                                                )))
                                            .values
                                            .toList(),
                                      ))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                          flex: 33,
                                          child: Padding(
                                              padding: EdgeInsets.all(15),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/icon/ico_bumn.png'),
                                                height: 25,
                                                width: 80,
                                              ))),
                                      Flexible(
                                          flex: 33,
                                          child: Padding(
                                              padding: EdgeInsets.all(15),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/icon/ico_waskita.png'),
                                                height: 25,
                                                width: 80,
                                              ))),
                                      Flexible(
                                          flex: 33,
                                          child: Padding(
                                              padding: EdgeInsets.all(15),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/icon/ico_epcd.png'),
                                                height: 25,
                                                width: 80,
                                              ))),
                                    ],
                                  )
                                ],
                              ))),
                    ],
                  )))),
            ],
          ),
        ),
      ),
    );
  }
}

void alertCustom(BuildContext context, title, text) {
  AlertDialog dialog = new AlertDialog(
    contentPadding: EdgeInsets.all(0),
    shape: RoundedRectangleBorder(
      side: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
    content: new Container(
      height: 230.0,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // dialog top
          new Expanded(
              flex: 2,
              child: new Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
              )),

          // dialog centre
          new Expanded(
            child: new Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  )),
            ),
            flex: 2,
          ),

          // dialog bottom
          new Row(
            children: [
              new Expanded(
                child: new Container(
                  padding: new EdgeInsets.all(16.0),
                  decoration: new BoxDecoration(
                    color: Color(0xffD98E28),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: new Text(
                    'batalkan'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              new Expanded(
                child: new Container(
                  padding: new EdgeInsets.all(16.0),
                  decoration: new BoxDecoration(
                    color: Color(0xff1B44A6),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: new Text(
                    'ya'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );

  showDialog(context: context, child: dialog);
}

void clicked2(BuildContext context, menu) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(menu),
      action: SnackBarAction(
          label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
