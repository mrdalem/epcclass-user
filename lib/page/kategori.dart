part of 'pages.dart';

class KategoriPage extends StatefulWidget{
  @override
  _KategoriPage createState() => _KategoriPage();
}

class _KategoriPage extends State<KategoriPage>{
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
          body: Stack(
            children: <Widget>[
              Column(
                children: [
                  Container( // menu atas
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
                      padding: EdgeInsets.fromLTRB(4.0, 20, 4.0, 20),
                      margin: EdgeInsets.only(bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("1. Metode Konstruksi", style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Text("Superintendent", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      child:
                      Scaffold(
                        bottomNavigationBar: Container(
                            height: 56,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => KompetensiPage()),
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
                                                fontWeight: FontWeight.w500,
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
                        body: SingleChildScrollView(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child:
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(bottom: 8),
                                  margin: EdgeInsets.only(bottom: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 4,
                                        offset: Offset(0,0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child:
                                  GFAccordion(
                                    margin: EdgeInsets.all(0),
                                    titleChild: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 10,
                                          child: Container(
                                              child:
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                child: Text("1",style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                ),
                                                ),
                                              )
                                          ),
                                        ),
                                        Expanded(
                                          flex: 75,
                                          child: Container(
                                            child: Column(
                                              children: [
                                                Container(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                          child: Text("Transmisi 500kV",style: TextStyle(
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 16,
                                                          ),),
                                                        ),
                                                        SizedBox(height: ("Transmisi 500kV".length >= 24)? 0: 20,),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                                              child: Text("2 materi:",style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                color: Color(0xff474646),
                                                                fontSize: 10,
                                                              ),),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.fromLTRB(10, 0, 2, 0),
                                                              child: Text("2 mandatory",style: TextStyle(
                                                                fontWeight: FontWeight.w400,
                                                                color: this.blue,
                                                                fontSize: 10,
                                                              ),),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.fromLTRB(10, 0, 2, 0),
                                                              child: Text("0 opsional",style: TextStyle(
                                                                fontWeight: FontWeight.w400,
                                                                color: Color(0xff474646),
                                                                fontSize: 10,
                                                              ),),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 10,
                                            child: Container(
                                              child:
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                    collapsedIcon: Column(
                                      children: <Widget>[
                                        Container(
                                            margin: EdgeInsets.only(right: 20),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                                  child:
                                                  Text("Total Nilai",style: TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.black
                                                  ),),
                                                ),
                                                Text("48",style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 26,
                                                    color: this.orange
                                                ),),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    expandedIcon: Column(
                                      children: <Widget>[
                                        Container(
                                            margin: EdgeInsets.only(right: 20),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                                  child:
                                                  Text("Total Nilai",style: TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.black
                                                  ),),
                                                ),
                                                Text("48",style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 26,
                                                    color: this.orange
                                                ),),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    collapsedTitleBackgroundColor: Colors.white,
                                    expandedTitleBackgroundColor: Colors.white,
                                    contentBackgroundColor: Colors.grey[200],
                                    titleBorderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    contentChild: Column(
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => PreTestPage()),
                                            );
                                          },
                                          child:
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 10,
                                                child: Container(
                                                    child:
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                      child: Text("1",style: TextStyle(
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 14,
                                                      ),
                                                      ),
                                                    )
                                                ),
                                              ),
                                              Expanded(
                                                flex: 90,
                                                child: Container(
                                                  padding: EdgeInsets.only(bottom: 5),
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                      bottom: BorderSide( //                   <--- left side
                                                        color: Colors.grey[300],
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 75,
                                                        child: Container(
                                                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                                  child: Text("Erection Tower",style: TextStyle(
                                                                    fontSize: 14,
                                                                  ),),
                                                                ),
                                                                SizedBox(height: ("Erection Tower".length >= 24)? 0: 5,),
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      padding: EdgeInsets.fromLTRB(5,2,5,2),
                                                                      margin: EdgeInsets.only(right: 5),
                                                                      decoration: BoxDecoration(
                                                                        color: this.orange,
                                                                        borderRadius: BorderRadius.all(Radius.circular(15)),
                                                                      ),
                                                                      child: Text("Mandatory", style:  TextStyle( fontSize: 10, color: Colors.white),),
                                                                    ),
                                                                    Container(
                                                                      child: Text("Video ", style:  TextStyle( fontSize: 10, fontWeight: FontWeight.bold),),
                                                                    ),
                                                                    Container(
                                                                      child: Text(" 13:21 menit", style:  TextStyle( fontSize: 10),),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(height: 5,),
                                                                Row(
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Text("Pre-test",style: TextStyle(
                                                                          fontSize: 10,
                                                                          color: Color(0xff1B44A6),
                                                                        ),),
                                                                        Padding(
                                                                          padding: EdgeInsets.all(2),
                                                                          child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xff1B44A6),),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(width: 10,),
                                                                    Row(
                                                                      children: [
                                                                        Text("Materi",style: TextStyle(
                                                                          fontSize: 10,
                                                                          color: Color(0xff1B44A6),
                                                                        ),),
                                                                        Padding(
                                                                          padding: EdgeInsets.all(2),
                                                                          child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xff1B44A6),),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(width: 10,),
                                                                    Row(
                                                                      children: [
                                                                        Text("Post-Test",style: TextStyle(
                                                                          fontSize: 10,
                                                                          color: Color(0xff1B44A6),
                                                                        ),),
                                                                        Padding(
                                                                          padding: EdgeInsets.all(2),
                                                                          child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xff1B44A6),),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                )
                                                              ],
                                                            )
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 25,
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: <Widget>[
                                                            Container(
                                                              padding: EdgeInsets.all(5),
                                                              margin: EdgeInsets.only(top: 8),
                                                              decoration: BoxDecoration(
                                                                color: this.orange,
                                                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                                              ),
                                                              child:
                                                              Text("48",style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors.white
                                                              ),),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 10,
                                              child: Container(
                                                  child:
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                    child: Text("2",style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14,
                                                    ),
                                                    ),
                                                  )
                                              ),
                                            ),
                                            Expanded(
                                              flex: 90,
                                              child: Container(
                                                padding:  (2 != 1)? null : EdgeInsets.only(bottom: 5),
                                                decoration: BoxDecoration(
                                                  border: (2 != 1)? null : Border(
                                                    bottom: BorderSide( //                   <--- left side
                                                      color: Colors.grey[300],
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 75,
                                                      child: Container(
                                                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                                child: Text("Materi 2",style: TextStyle(
                                                                  fontSize: 14,
                                                                ),),
                                                              ),
                                                              SizedBox(height: ("Materi 2".length >= 24)? 0: 5,),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.fromLTRB(5,2,5,2),
                                                                    margin: EdgeInsets.only(right: 5),
                                                                    decoration: BoxDecoration(
                                                                      color: this.orange,
                                                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                                                    ),
                                                                    child: Text("Mandatory", style:  TextStyle( fontSize: 10, color: Colors.white),),
                                                                  ),
                                                                  Container(
                                                                    child: Text("Video ", style:  TextStyle( fontSize: 10, fontWeight: FontWeight.bold),),
                                                                  ),
                                                                  Container(
                                                                    child: Text(" 7:26 menit", style:  TextStyle( fontSize: 10),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Row(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Text("Pre-test",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xffC4C4C4),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xffC4C4C4),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(width: 10,),
                                                                  Row(
                                                                    children: [
                                                                      Text("Materi",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xffC4C4C4),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xffC4C4C4),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(width: 10,),
                                                                  Row(
                                                                    children: [
                                                                      Text("Post-Test",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xffC4C4C4),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xffC4C4C4),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          )
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 25,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: <Widget>[

                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 8),
                                  margin: EdgeInsets.only(bottom: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 4,
                                        offset: Offset(0,0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child:
                                  GFAccordion(
                                    margin: EdgeInsets.all(0),
                                    titleChild: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 10,
                                          child: Container(
                                              child:
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                child: Text("2",style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                ),
                                                ),
                                              )
                                          ),
                                        ),
                                        Expanded(
                                          flex: 75,
                                          child: Container(
                                            child: Column(
                                              children: [
                                                Container(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                          child: Text("Kategori 2",style: TextStyle(
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 16,
                                                          ),),
                                                        ),
                                                        SizedBox(height: ("Transmisi 500kV".length >= 24)? 0: 20,),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                                              child: Text("6 materi:",style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                color: Color(0xff474646),
                                                                fontSize: 10,
                                                              ),),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.fromLTRB(10, 0, 2, 0),
                                                              child: Text("5 mandatory",style: TextStyle(
                                                                fontWeight: FontWeight.w400,
                                                                color: this.blue,
                                                                fontSize: 10,
                                                              ),),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.fromLTRB(10, 0, 2, 0),
                                                              child: Text("1 opsional",style: TextStyle(
                                                                fontWeight: FontWeight.w400,
                                                                color: Color(0xff474646),
                                                                fontSize: 10,
                                                              ),),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 10,
                                            child: Container(
                                              child:
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                    collapsedIcon: Column(
                                      children: <Widget>[
                                        Container(
                                            margin: EdgeInsets.only(right: 20),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                                  child:
                                                  Text("",style: TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.black
                                                  ),),
                                                ),
                                                Text("",style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 26,
                                                    color: this.orange
                                                ),),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    expandedIcon: Column(
                                      children: <Widget>[
                                        Container(
                                            margin: EdgeInsets.only(right: 20),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                                  child:
                                                  Text("",style: TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.black
                                                  ),),
                                                ),
                                                Text("",style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 26,
                                                    color: this.orange
                                                ),),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    collapsedTitleBackgroundColor: Colors.white,
                                    expandedTitleBackgroundColor: Colors.white,
                                    contentBackgroundColor: Colors.grey[200],
                                    titleBorderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    contentChild: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 10,
                                              child: Container(
                                                  child:
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                    child: Text("1",style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14,
                                                    ),
                                                    ),
                                                  )
                                              ),
                                            ),
                                            Expanded(
                                              flex: 90,
                                              child: Container(
                                                padding: EdgeInsets.only(bottom: 5),
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide( //                   <--- left side
                                                      color: Colors.grey[300],
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 75,
                                                      child: Container(
                                                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                                child: Text("Erection Tower",style: TextStyle(
                                                                  fontSize: 14,
                                                                ),),
                                                              ),
                                                              SizedBox(height: ("Erection Tower".length >= 24)? 0: 5,),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.fromLTRB(5,2,5,2),
                                                                    margin: EdgeInsets.only(right: 5),
                                                                    decoration: BoxDecoration(
                                                                      color: this.orange,
                                                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                                                    ),
                                                                    child: Text("Mandatory", style:  TextStyle( fontSize: 10, color: Colors.white),),
                                                                  ),
                                                                  Container(
                                                                    child: Text("Video ", style:  TextStyle( fontSize: 10, fontWeight: FontWeight.bold),),
                                                                  ),
                                                                  Container(
                                                                    child: Text(" 13:21 menit", style:  TextStyle( fontSize: 10),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Row(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Text("Pre-test",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xff1B44A6),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xff1B44A6),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(width: 10,),
                                                                  Row(
                                                                    children: [
                                                                      Text("Materi",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xff1B44A6),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xff1B44A6),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(width: 10,),
                                                                  Row(
                                                                    children: [
                                                                      Text("Post-Test",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xff1B44A6),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xff1B44A6),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          )
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 25,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: <Widget>[
                                                          Container(
                                                            padding: EdgeInsets.all(5),
                                                            margin: EdgeInsets.only(top: 8),
                                                            decoration: BoxDecoration(
                                                              color: this.orange,
                                                              borderRadius: BorderRadius.all(Radius.circular(15)),
                                                            ),
                                                            child:
                                                            Text("48",style: TextStyle(
                                                                fontSize: 16,
                                                                color: Colors.white
                                                            ),),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 10,
                                              child: Container(
                                                  child:
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                    child: Text("2",style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14,
                                                    ),
                                                    ),
                                                  )
                                              ),
                                            ),
                                            Expanded(
                                              flex: 90,
                                              child: Container(
                                                padding:  (2 != 1)? null : EdgeInsets.only(bottom: 5),
                                                decoration: BoxDecoration(
                                                  border: (2 != 1)? null : Border(
                                                    bottom: BorderSide( //                   <--- left side
                                                      color: Colors.grey[300],
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 75,
                                                      child: Container(
                                                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                                child: Text("Materi 2",style: TextStyle(
                                                                  fontSize: 14,
                                                                ),),
                                                              ),
                                                              SizedBox(height: ("Materi 2".length >= 24)? 0: 5,),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.fromLTRB(5,2,5,2),
                                                                    margin: EdgeInsets.only(right: 5),
                                                                    decoration: BoxDecoration(
                                                                      color: this.orange,
                                                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                                                    ),
                                                                    child: Text("Mandatory", style:  TextStyle( fontSize: 10, color: Colors.white),),
                                                                  ),
                                                                  Container(
                                                                    child: Text("Video ", style:  TextStyle( fontSize: 10, fontWeight: FontWeight.bold),),
                                                                  ),
                                                                  Container(
                                                                    child: Text(" 7:26 menit", style:  TextStyle( fontSize: 10),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Row(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Text("Pre-test",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xffC4C4C4),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xffC4C4C4),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(width: 10,),
                                                                  Row(
                                                                    children: [
                                                                      Text("Materi",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xffC4C4C4),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xffC4C4C4),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(width: 10,),
                                                                  Row(
                                                                    children: [
                                                                      Text("Post-Test",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xffC4C4C4),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xffC4C4C4),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          )
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 25,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: <Widget>[

                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 8),
                                  margin: EdgeInsets.only(bottom: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 4,
                                        offset: Offset(0,0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child:
                                  GFAccordion(
                                    margin: EdgeInsets.all(0),
                                    titleChild: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 10,
                                          child: Container(
                                              child:
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                child: Text("3",style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                ),
                                                ),
                                              )
                                          ),
                                        ),
                                        Expanded(
                                          flex: 75,
                                          child: Container(
                                            child: Column(
                                              children: [
                                                Container(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                          child: Text("Kategori 3",style: TextStyle(
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 16,
                                                          ),),
                                                        ),
                                                        SizedBox(height: ("Transmisi 500kV".length >= 24)? 0: 20,),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                                              child: Text("6 materi:",style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                color: Color(0xff474646),
                                                                fontSize: 10,
                                                              ),),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.fromLTRB(10, 0, 2, 0),
                                                              child: Text("5 mandatory",style: TextStyle(
                                                                fontWeight: FontWeight.w400,
                                                                color: this.blue,
                                                                fontSize: 10,
                                                              ),),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.fromLTRB(10, 0, 2, 0),
                                                              child: Text("1 opsional",style: TextStyle(
                                                                fontWeight: FontWeight.w400,
                                                                color: Color(0xff474646),
                                                                fontSize: 10,
                                                              ),),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 10,
                                            child: Container(
                                              child:
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                    collapsedIcon: Column(
                                      children: <Widget>[
                                        Container(
                                            margin: EdgeInsets.only(right: 20),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                                  child:
                                                  Text("",style: TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.black
                                                  ),),
                                                ),
                                                Text("",style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 26,
                                                    color: this.orange
                                                ),),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    expandedIcon: Column(
                                      children: <Widget>[
                                        Container(
                                            margin: EdgeInsets.only(right: 20),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                                  child:
                                                  Text("",style: TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.black
                                                  ),),
                                                ),
                                                Text("",style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 26,
                                                    color: this.orange
                                                ),),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    collapsedTitleBackgroundColor: Colors.white,
                                    expandedTitleBackgroundColor: Colors.white,
                                    contentBackgroundColor: Colors.grey[200],
                                    titleBorderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    contentChild: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 10,
                                              child: Container(
                                                  child:
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                    child: Text("1",style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14,
                                                    ),
                                                    ),
                                                  )
                                              ),
                                            ),
                                            Expanded(
                                              flex: 90,
                                              child: Container(
                                                padding: EdgeInsets.only(bottom: 5),
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide( //                   <--- left side
                                                      color: Colors.grey[300],
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 75,
                                                      child: Container(
                                                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                                child: Text("Erection Tower",style: TextStyle(
                                                                  fontSize: 14,
                                                                ),),
                                                              ),
                                                              SizedBox(height: ("Erection Tower".length >= 24)? 0: 5,),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.fromLTRB(5,2,5,2),
                                                                    margin: EdgeInsets.only(right: 5),
                                                                    decoration: BoxDecoration(
                                                                      color: this.orange,
                                                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                                                    ),
                                                                    child: Text("Mandatory", style:  TextStyle( fontSize: 10, color: Colors.white),),
                                                                  ),
                                                                  Container(
                                                                    child: Text("Video ", style:  TextStyle( fontSize: 10, fontWeight: FontWeight.bold),),
                                                                  ),
                                                                  Container(
                                                                    child: Text(" 13:21 menit", style:  TextStyle( fontSize: 10),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Row(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Text("Pre-test",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xff1B44A6),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xff1B44A6),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(width: 10,),
                                                                  Row(
                                                                    children: [
                                                                      Text("Materi",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xff1B44A6),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xff1B44A6),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(width: 10,),
                                                                  Row(
                                                                    children: [
                                                                      Text("Post-Test",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xff1B44A6),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xff1B44A6),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          )
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 25,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: <Widget>[
                                                          Container(
                                                            padding: EdgeInsets.all(5),
                                                            margin: EdgeInsets.only(top: 8),
                                                            decoration: BoxDecoration(
                                                              color: this.orange,
                                                              borderRadius: BorderRadius.all(Radius.circular(15)),
                                                            ),
                                                            child:
                                                            Text("48",style: TextStyle(
                                                                fontSize: 16,
                                                                color: Colors.white
                                                            ),),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 10,
                                              child: Container(
                                                  child:
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                    child: Text("2",style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14,
                                                    ),
                                                    ),
                                                  )
                                              ),
                                            ),
                                            Expanded(
                                              flex: 90,
                                              child: Container(
                                                padding:  (2 != 1)? null : EdgeInsets.only(bottom: 5),
                                                decoration: BoxDecoration(
                                                  border: (2 != 1)? null : Border(
                                                    bottom: BorderSide( //                   <--- left side
                                                      color: Colors.grey[300],
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 75,
                                                      child: Container(
                                                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                                child: Text("Materi 2",style: TextStyle(
                                                                  fontSize: 14,
                                                                ),),
                                                              ),
                                                              SizedBox(height: ("Materi 2".length >= 24)? 0: 5,),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.fromLTRB(5,2,5,2),
                                                                    margin: EdgeInsets.only(right: 5),
                                                                    decoration: BoxDecoration(
                                                                      color: this.orange,
                                                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                                                    ),
                                                                    child: Text("Mandatory", style:  TextStyle( fontSize: 10, color: Colors.white),),
                                                                  ),
                                                                  Container(
                                                                    child: Text("Video ", style:  TextStyle( fontSize: 10, fontWeight: FontWeight.bold),),
                                                                  ),
                                                                  Container(
                                                                    child: Text(" 7:26 menit", style:  TextStyle( fontSize: 10),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Row(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Text("Pre-test",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xffC4C4C4),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xffC4C4C4),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(width: 10,),
                                                                  Row(
                                                                    children: [
                                                                      Text("Materi",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xffC4C4C4),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xffC4C4C4),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(width: 10,),
                                                                  Row(
                                                                    children: [
                                                                      Text("Post-Test",style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(0xffC4C4C4),
                                                                      ),),
                                                                      Padding(
                                                                        padding: EdgeInsets.all(2),
                                                                        child: Icon(Icons.check_circle_outline, size: 10,color: Color(0xffC4C4C4),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          )
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 25,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: <Widget>[

                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}