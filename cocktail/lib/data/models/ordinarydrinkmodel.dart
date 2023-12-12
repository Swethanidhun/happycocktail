// To parse this JSON data, do
//
//     final ordinaryDrinkModel = ordinaryDrinkModelFromJson(jsonString);

import 'dart:convert';

List<OrdinaryDrinkModel> ordinaryDrinkModelFromJson(String str) => List<OrdinaryDrinkModel>.from(json.decode(str).map((x) => OrdinaryDrinkModel.fromJson(x)));

String ordinaryDrinkModelToJson(List<OrdinaryDrinkModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrdinaryDrinkModel {
    String? strDrink;
    String? strDrinkThumb;
    String? idDrink;

    OrdinaryDrinkModel({
        this.strDrink,
        this.strDrinkThumb,
        this.idDrink,
    });

    factory OrdinaryDrinkModel.fromJson(Map<String, dynamic> json) => OrdinaryDrinkModel(
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
      List<OrdinaryDrinkModel>.from(list.map((x) => OrdinaryDrinkModel.fromJson(x)));

}
