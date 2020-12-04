part of 'pages.dart';

class MateriPage extends StatefulWidget{
  @override
  _MateriPageState createState() => _MateriPageState();
}

class _MateriPageState extends State<MateriPage>{
  var blue    = const Color(0xff1B44A6);
  var orange  = const Color(0xffD98E28);

  // List<Widget> _sliverList(int size, int sliverChildCount) {
  //   var widgetList = new List<Widget>();
  //   for (int index = 0; index < size; index++)
  //     widgetList
  //       ..add(
  //         SliverAppBar(
  //           expandedHeight: MediaQuery.of(context).size.height * 0.4,
  //           backgroundColor: const Color(0xff1c0436),
  //           pinned: false,
  //           floating: true,
  //           leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
  //           actions: [
  //             IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
  //           ],
  //           flexibleSpace: Container(
  //               decoration: BoxDecoration(
  //                 image: DecorationImage(
  //                   image: NetworkImage(
  //                       'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/4bb82b72535211.5bead62fe26d5.jpg'), //your image
  //                   fit: BoxFit.cover,
  //                 ),
  //                 borderRadius: BorderRadius.vertical(
  //                   bottom:
  //                   Radius.circular(50),
  //                 ),
  //               ),
  //               child: FlexibleSpaceBar(
  //                   collapseMode: CollapseMode.pin,
  //                   centerTitle: true,
  //                   title: Text('A Synthwave Mix'))),
  //         ),
  //       )
  //       ..add(SliverFixedExtentList(
  //         itemExtent: 50.0,
  //         delegate:
  //         SliverChildBuilderDelegate((BuildContext context, int index) {
  //           return Container(
  //             alignment: Alignment.center,
  //             color: Colors.lightBlue[100 * (index % 9)],
  //             child: Text('list item $index'),
  //           );
  //         }, childCount: sliverChildCount),
  //       ));
  //
  //   return widgetList;
  // }

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
                                  MaterialPageRoute(builder: (context) => HasilPage()),
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                color: Colors.grey[400],
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Text("SELANJUTNYA", style: TextStyle(
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
                                            child:  Text("Post-test", style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 14), textAlign: TextAlign.center,)
                                        ),
                                      ]
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              //video disini
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                                  child: Image(image: AssetImage("assets/icon/video.png"),)
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
                                      offset: Offset(0,0),
                                      color: Colors.grey[300],
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                        width: double.infinity,
                                        margin: EdgeInsets.only(bottom: 20),
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide( //                   <--- left side
                                              color: Colors.grey,
                                              width: 0.5,
                                            ),
                                          ),
                                        ),
                                        child:
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 5),
                                              child: Text("Erection Tower", style: TextStyle(
                                                color: Color(0xff474646),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 5),
                                              child: Text("Pengisi video", style: TextStyle(
                                                color: Color(0xff474646),
                                                fontSize: 12,
                                              ),),
                                            ),
                                          ],
                                        )
                                    ),
                                    Container(
                                        width: double.infinity,
                                        child:
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 5),
                                              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. At vel laoreet sit nisi. Quis pellentesque augue eu, pulvinar elit amet ornare vulputate ipsum. Accumsan aliquet elementum sem posuere in id. Posuere est id bibendum arcu lacinia dolor.", style: TextStyle(
                                                color: Color(0xff474646),
                                                fontSize: 12,
                                              ),),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 5),
                                              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. At vel laoreet sit nisi. Quis pellentesque augue eu, pulvinar elit amet ornare vulputate ipsum. Accumsan aliquet elementum sem posuere in id. Posuere est id bibendum arcu lacinia dolor.", style: TextStyle(
                                                color: Color(0xff474646),
                                                fontSize: 12,
                                              ),),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 5),
                                              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. At vel laoreet sit nisi. Quis pellentesque augue eu, pulvinar elit amet ornare vulputate ipsum. Accumsan aliquet elementum sem posuere in id. Posuere est id bibendum arcu lacinia dolor.", style: TextStyle(
                                                color: Color(0xff474646),
                                                fontSize: 12,
                                              ),),
                                            )
                                          ],
                                        )
                                    ),
                                  ],
                                )
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
                                        offset: Offset(0,0),
                                        color: Colors.grey[300],
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                          width: double.infinity,
                                          child:
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(bottom: 5),
                                                child: Text("Bersiaplah!", style: TextStyle(
                                                  color: Color(0xff474646),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    flex: 7,
                                                    child: Column(
                                                      children: [
                                                        Text("Setelah selesai menerima materi diatas, maka bersialah untuk mengerjakan soal-soal yang ada di post test.",textAlign: TextAlign.justify, style: TextStyle(
                                                          color: Color(0xff474646),
                                                          fontSize: 13,
                                                        ),),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Text("Baca soal baik-baik dan tekan tombol biru dibawah untuk memulai. Semoga berhasil!", textAlign: TextAlign.justify,style: TextStyle(
                                                          color: Color(0xff474646),
                                                          fontSize: 13,
                                                        ),),
                                                      ],
                                                    )
                                                  ),
                                                  Flexible(
                                                    flex: 2,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(top: 15, bottom: 15, left: 25),
                                                      child: Image(image: AssetImage('assets/icon/ico_5.png'))
                                                    )
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                      ),
                                    ],
                                  )
                              )
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

void clicked3(BuildContext context, menu) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(menu),
      action: SnackBarAction(
          label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}