import 'package:flutter/foundation.dart';

class Soal {
  final String id;
  final bool status;
  final String job;
  final String kompetensi;
  final String kategori;
  final String materi;
  final String jenis;
  final String soal;
  final String opsi1;
  final String opsi2;
  final String opsi3;
  final String opsi4;
  final String imgurl;
  final String author;
  final int jumbenar;
  final int jumsalah;
  final DateTime input;

  Soal(
      {@required this.id,
      @required this.status,
      @required this.job,
      @required this.kompetensi,
      @required this.kategori,
      @required this.materi,
      @required this.jenis,
      @required this.soal,
      @required this.opsi1,
      @required this.opsi2,
      @required this.opsi3,
      @required this.opsi4,
      @required this.imgurl,
      @required this.author,
      this.jumbenar = 0,
      this.jumsalah = 0,
      this.input});

  factory Soal.fromJson(Map<String, dynamic> json) {
    return Soal(
        id: json["id"],
        status: json["status"],
        job: json["job"],
        kompetensi: json["kompetensi"],
        kategori: json["kategori"],
        materi: json["materi"],
        jenis: json["jenis"],
        soal: json["soal"],
        opsi1: json["opsi_benar"],
        opsi2: json["opsi_2"],
        opsi3: json["opsi_3"],
        opsi4: json["opsi_4"],
        imgurl: json["img_url"],
        author: json["author"]);
  }
}
