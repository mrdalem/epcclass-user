import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TesPage extends StatelessWidget {
  // final String documentId;

  // TesPage(this.documentId);

  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('pengguna');

    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            FirebaseFirestore.instance
                .collection('banksoal')
                .where('id', isEqualTo: 'S100')
                .limit(1)
                .get()
                .then((QuerySnapshot qs) => {
                      qs.docs.forEach((doc) {
                        List acak = [
                          doc['opsi1'],
                          doc['opsi2'],
                          doc['opsi3'],
                          doc['opsi4']
                        ];
                        var tam = acak.toList()..shuffle();
                        print('A. ' + tam[0]);
                        print('B. ' + tam[1]);
                        print('C. ' + tam[2]);
                        print('D. ' + tam[3]);
                        tam = [];
                      })
                    });
          },
          child: Text('Lihat Data Firestore'),
        ),
      ),
    );
  }
}

class DatabaseManager {
  final CollectionReference profileList =
      FirebaseFirestore.instance.collection('profileInfo');

  Future<void> createUserData(
      String name, String gender, int score, String uid) async {
    return await profileList
        .doc(uid)
        .set({'name': name, 'gender': gender, 'score': score});
  }

  Future updateUserList(
      String name, String gender, int score, String uid) async {
    return await profileList
        .doc(uid)
        .update({'name': name, 'gender': gender, 'score': score});
  }

  Future getUsersList() async {
    List itemsList = [];

    try {
      await profileList.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data);
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
