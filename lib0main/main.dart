import 'dart:convert';
import 'dart:math';

import './models/pengguna.dart';
import './tes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'models/soal.dart';
import 'models/banksoal.dart';
import 'models/pengguna.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TesPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  StartPageState createState() {
    return StartPageState();
  }
}

class StartPageState extends State<StartPage> {
  String id;
  final db = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();
  String name;
  String _jsonContent = "";

  Card buildItem(DocumentSnapshot doc) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'name: ${doc.data()['name']}',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'todo: ${doc.data()['todo']}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () => updateData(doc),
                  child: Text('Update todo',
                      style: TextStyle(color: Colors.white)),
                  color: Colors.green,
                ),
                SizedBox(width: 8),
                FlatButton(
                  onPressed: () => deleteData(doc),
                  child: Text('Delete'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'name',
        fillColor: Colors.grey[300],
        filled: true,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
      },
      onSaved: (value) => name = value,
    );
  }

  Future _loadSampleJson() async {
    String jsonString = await rootBundle.loadString("assets/banksoal.json");
    final jsonData = json.decode(jsonString);
    Soal datasoal = Soal.fromJson(jsonData);
    print('dum');
    setState(() {
      _jsonContent = datasoal.toString();

      // sample.name => you can access field from class model
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firestore CRUD'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Form(
            key: _formKey,
            child: buildTextFormField(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: singUpPenggunaAwal,
                child:
                    Text('Signup Awal', style: TextStyle(color: Colors.white)),
                color: Colors.green,
              ),
              RaisedButton(
                onPressed: id != null ? readData : null,
                child: Text('Read', style: TextStyle(color: Colors.white)),
                color: Colors.blue,
              ),
              RaisedButton(
                onPressed: _loadSampleJson,
                child: Text('Read JSON File',
                    style: TextStyle(color: Colors.white)),
                color: Colors.green,
              ),
            ],
          ),
          StreamBuilder<QuerySnapshot>(
            stream: db.collection('CRUD').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                    children: snapshot.data.docs
                        .map((doc) => buildItem(doc))
                        .toList());
              } else {
                return SizedBox();
              }
            },
          )
        ],
      ),
    );
  }

  void createData() async {
    Banksoal soal = new Banksoal();

    soal.data.forEach((el) {
      // print(el['id']);

      // if (_formKey.currentState.validate()) {
      //   _formKey.currentState.save();
      //   DocumentReference ref = await db
      //       .collection('banksoal')
      //       .add({'name': '$name 😎', 'todo': DateTime.now()});
      //   setState(() => id = ref.id);
      //   print(ref.id);

      CollectionReference users =
          FirebaseFirestore.instance.collection('banksoal');

      users
          .add({
            'nip': el['id'],
            'company': el['status'],
            'job': el['job'],
            'kompetensi': el['kompetensi'],
            'kategori': el['kategori'],
            'materi': el['materi'],
            'jenis': el['jenis'],
            'soal': el['soal'],
            'opsi1': el['opsi_benar'],
            'opsi2': el['opsi_2'],
            'opsi3': el['opsi_3'],
            'opsi4': el['opsi_4'],
            'imgurl': el['img_url'],
            'author': el['author'],
            'jumbenar': 0,
            'jumsalah': 0,
            'input': DateTime.now()
          })
          .then((value) => print(el['id'] + "User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    });
  }

  void inputDataPenggunaAwal() async {
    Pengguna soal = new Pengguna();

    soal.data.forEach((el) {
      // print(el['password']);

      CollectionReference users =
          FirebaseFirestore.instance.collection('pengguna');

      users
          .add({
            'nip': el['nip'],
            'nama': el['nama'],
            'email': el['email'],
            'password': el['password'],
            'jabatan': el['jabatan'],
            'sertifikat': 0,
            'totalnilai': 0,
            'peringkat': 0,
            'input': DateTime.now()
          })
          .then((value) => print(el['nama']))
          .catchError((error) => print("Failed to add user: $error"));
    });
  }

  void singUpPenggunaAwal() async {
    Pengguna soal = new Pengguna();

    soal.data.forEach((el) async {
      // print(el['password']);

      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: el['email'], password: el['password']);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    });
  }

  void readData() async {
    DocumentSnapshot snapshot = await db.collection('CRUD').doc(id).get();
    print(snapshot.data()['name']);
  }

  void updateData(DocumentSnapshot doc) async {
    await db.collection('CRUD').doc(doc.id).update({'todo': 'please 🤫'});
  }

  void deleteData(DocumentSnapshot doc) async {
    await db.collection('CRUD').doc(doc.id).delete();
    setState(() => id = null);
  }

  String randomTodo() {
    final randomNumber = Random().nextInt(4);
    String todo;
    switch (randomNumber) {
      case 1:
        todo = 'Like and subscribe 💩';
        break;
      case 2:
        todo = 'Twitter @robertbrunhage 🤣';
        break;
      case 3:
        todo = 'Patreon in the description 🤗';
        break;
      default:
        todo = 'Leave a comment 🤓';
        break;
    }
    return todo;
  }
}
