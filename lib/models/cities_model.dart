// To parse this JSON data, do
//
//     final citiesModel = citiesModelFromJson(jsonString);

import 'dart:convert';

CitiesModel citiesModelFromJson(String str) =>
    CitiesModel.fromJson(json.decode(str));

String citiesModelToJson(CitiesModel data) => json.encode(data.toJson());

class CitiesModel {
  bool error;
  String msg;
  List<String> data;

  CitiesModel({
    required this.error,
    required this.msg,
    required this.data,
  });

  factory CitiesModel.fromJson(Map<String, dynamic> json) => CitiesModel(
        error: json["error"],
        msg: json["msg"],
        data: List<String>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "msg": msg,
        "data": List<dynamic>.from(data.map((x) => x)),
      };
}
