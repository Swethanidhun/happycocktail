// To parse this JSON data, do
//
//     final nonAlcoholicModel = nonAlcoholicModelFromJson(jsonString);

import 'dart:convert';

List<NonAlcoholicModel> nonAlcoholicModelFromJson(String str) => List<NonAlcoholicModel>.from(json.decode(str).map((x) => NonAlcoholicModel.fromJson(x)));

String nonAlcoholicModelToJson(List<NonAlcoholicModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NonAlcoholicModel {
    String? strDrink;
    String? strDrinkThumb;
    String? idDrink;

    NonAlcoholicModel({
        this.strDrink,
        this.strDrinkThumb,
        this.idDrink,
    });

    factory NonAlcoholicModel.fromJson(Map<String, dynamic> json) => NonAlcoholicModel(
        strDrink: json["strDrink"],
        strDrinkThumb: json["strDrinkThumb"],
        idDrink: json["idDrink"],
    );

    Map<String, dynamic> toJson() => {
        "strDrink": strDrink,
        "strDrinkThumb": strDrinkThumb,
        "idDrink": idDrink,
    };
    static listFromJson(list) =>
      List<NonAlcoholicModel>.from(list.map((x) => NonAlcoholicModel.fromJson(x)));
}
