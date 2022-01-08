// To parse this JSON data, do
//
//     final mailModel = mailModelFromJson(jsonString);

import 'dart:convert';

MailModel mailModelFromJson(String str) => MailModel.fromJson(json.decode(str));

String mailModelToJson(MailModel data) => json.encode(data.toJson());

class MailModel {
  MailModel({
    required this.id,
    required this.ustBaslik ,
    required this.altBaslik,
    required this.icerik,
  });

  int? id;
  String? ustBaslik;
  String? altBaslik;
  String? icerik;

  factory MailModel.fromJson(Map<String, dynamic> json) => MailModel(
    id: json["id"],
    ustBaslik: json["ust_baslik"],
    altBaslik: json["alt_baslik"],
    icerik: json["icerik"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "ust_baslik": ustBaslik,
    "alt_baslik": altBaslik,
    "icerik": icerik,
  };

}
