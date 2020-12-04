part of 'pages.dart';

class KompetensiPage extends StatefulWidget{
  @override
  _KompetensiPage createState() => _KompetensiPage();
}

class _KompetensiPage extends State<KompetensiPage> {
  var blue    = const Color(0xff1B44A6);
  var orange  = const Color(0xffD98E28);

  String _selectValue;
  List _select = [
    "Superintendent",
    "Superintendent 2",
    "Superintendent 3",
    "Superintendent 4",
  ];

  final GlobalKey globalKey = GlobalKey();
  double getHeight = 0;

  getWH() {
    final containerHeight = globalKey.currentContext.size.height;
    getHeight = double.tryParse("$containerHeight");
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
            body: Stack(
              children: <Widget>[
                Column(
                  children: [
                    Container( // menu atas
                      decoration: BoxDecoration(
                          color: this.blue,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 4,
                              offset: Offset(0,2),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          )
                      ),
                      padding: EdgeInsets.fromLTRB(4.0, 20, 4.0, 15),
                      margin: EdgeInsets.only(bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Kompetensi", style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 1,
                                  color: Colors.white
                              ),),
                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Text("Pilih pekerjaan", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: this.orange, spreadRadius: 3),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                  alignedDropdown: true,
                                  child:  DropdownButton(
                                    hint: Text("Select"),
                                    value: _selectValue,
                                    dropdownColor: Colors.white,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconEnabledColor: this.orange,
                                    items: _select.map((value) {
                                      return DropdownMenuItem(
                                        child: Text(value),
                                        value: value,
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        _selectValue = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
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
                          body:
                          SingleChildScrollView(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child:
                            Column(
                                children: <Widget>[
                                new GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => KategoriPage()),
                                    );
                                  },
                                  child:
                                      Container(
                                        margin: EdgeInsets.only(right: 14, left: 14),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                        //   color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0,0),
                                              spreadRadius: 1,
                                              blurRadius: 8
                                            )
                                          ]
                                        ),
                                        child: Container(
                                          child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children:<Widget> [
                                               Container(
                                                  height: 70,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      color:Colors.white,
                                                      borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(15),
                                                        bottomLeft: Radius.circular(15),
                                                      ),
                                                  ),
                                                  padding: EdgeInsets.all(10),
                                                  child: Text("1"),
                                                ),
                                                Expanded(
                                                  flex: 7,
                                                  child: Container(
                                                    height: 70,
                                                    decoration: BoxDecoration(
                                                      color:Colors.white,
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.only(top: 10, bottom: 10),
                                                          child: Text("Metode Kontruksi asasas asasasasasasa asasaasasasasa asaasasa", overflow: TextOverflow.ellipsis,),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets.only(right: 5, bottom: 10),
                                                              child: Text("3 kategori", style: TextStyle(
                                                                  fontSize: 12
                                                              ),),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(bottom: 10),
                                                              child: Text("16 materi", style: TextStyle(
                                                                  fontSize: 12
                                                              ),),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ),
                                                Container(
                                                  height: 70,
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                    color: this.orange,
                                                    borderRadius: BorderRadius.only(
                                                        topRight: Radius.circular(15.0),
                                                        bottomRight: Radius.circular(15.0)),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text("Sisa Materi",style: TextStyle(
                                                        fontSize: 8,
                                                      ),),
                                                      Text("15", style: TextStyle(
                                                        fontSize: 18,
                                                      ),)
                                                    ],
                                                  ),
                                                )
                                              ]
                                          ),
                                        )
                                      ),
                                ),
                                  // new GestureDetector(
                                  //   onTap: (){
                                  //     Navigator.push(
                                  //       context,
                                  //       MaterialPageRoute(builder: (context) => KategoriPage()),
                                  //     );
                                  //   },
                                  //   child: Container(
                                  //     key: globalKey,
                                  //     margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
                                  //     decoration: BoxDecoration(
                                  //       color: Colors.white,
                                  //       boxShadow: [
                                  //         BoxShadow(
                                  //           color: Colors.grey.withOpacity(0.5),
                                  //           spreadRadius: 1,
                                  //           blurRadius: 4,
                                  //           offset: Offset(0,0),
                                  //         )
                                  //       ],
                                  //       borderRadius: BorderRadius.all(Radius.circular(15)),
                                  //     ),
                                  //     child: Row(
                                  //       mainAxisAlignment: MainAxisAlignment.center,
                                  //       crossAxisAlignment: CrossAxisAlignment.start,
                                  //       children: [
                                  //         Expanded(
                                  //           flex: 10,
                                  //           child: Container(
                                  //               child:
                                  //               Padding(
                                  //                 padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  //                 child: Text("1",textAlign: TextAlign.center,style: TextStyle(
                                  //                   fontWeight: FontWeight.w500,
                                  //                   fontSize: 16,
                                  //                 ),
                                  //                 ),
                                  //               )
                                  //           ),
                                  //         ),
                                  //         Expanded(
                                  //           flex: 70,
                                  //           child: Container(
                                  //             child: Column(
                                  //               children: [
                                  //                 Container(
                                  //                     child: Column(
                                  //                       crossAxisAlignment: CrossAxisAlignment.start,
                                  //                       children: [
                                  //                         Padding(
                                  //                           padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  //                           child: Text("Metode Konstruksi asasasa asasaas asasasas aasaassa asasaasaas",style: TextStyle(
                                  //                             fontWeight: FontWeight.w500,
                                  //                             fontSize: 16,
                                  //                           ),),
                                  //                         ),
                                  //                         SizedBox(height: ("Metode Konstruksi asasasa asasaas asasasas aasaassa asasaasaas".length >= 24)? 0: 20,),
                                  //                         Row(
                                  //                           children: [
                                  //                             Padding(
                                  //                               padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  //                               child: Text("3 kategori",style: TextStyle(
                                  //                                 fontWeight: FontWeight.w400,
                                  //                                 fontSize: 10,
                                  //                               ),),
                                  //                             ),
                                  //                             Padding(
                                  //                               padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                                  //                               child: Text("16 materi  ",style: TextStyle(
                                  //                                 fontWeight: FontWeight.w400,
                                  //                                 fontSize: 10,
                                  //                               ),),
                                  //                             ),
                                  //                           ],
                                  //                         ),
                                  //                         SizedBox(height: 10),
                                  //                       ],
                                  //                     )
                                  //                 ),
                                  //               ],
                                  //             ),
                                  //           ),
                                  //         ),
                                  //         Flexible(
                                  //           fit: FlexFit.tight,
                                  //           flex: 20,
                                  //           child: Container(
                                  //             padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                                  //             decoration: BoxDecoration(
                                  //               borderRadius: BorderRadius.only(
                                  //                   topRight: Radius.circular(15.0),
                                  //                   bottomRight: Radius.circular(15.0)),
                                  //               color: this.orange,
                                  //             ),
                                  //             child:  Column(
                                  //               mainAxisAlignment: MainAxisAlignment.center,
                                  //               children: <Widget>[
                                  //                 Padding(
                                  //                   padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                  //                   child:
                                  //                   Text("Sisa materi",style: TextStyle(
                                  //                       fontSize: 8,
                                  //                       color: Colors.white
                                  //                   ),),
                                  //                 ),
                                  //                 Text("15",style: TextStyle(
                                  //                     fontWeight: FontWeight.w500,
                                  //                     fontSize: 26,
                                  //                     color: Colors.white
                                  //                 ),),
                                  //               ],
                                  //             ),
                                  //           )
                                  //         )
                                  //       ],
                                  //     ),
                                  //   ),
                                  // ),
                                ]
                            )
                          ),
                        ),
                      )
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}