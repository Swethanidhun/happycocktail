// To parse this JSON data, do
//
//     final alcoholicModel = alcoholicModelFromJson(jsonString);

import 'dart:convert';

List<AlcoholicModel> alcoholicModelFromJson(String str) => List<AlcoholicModel>.from(json.decode(str).map((x) => AlcoholicModel.fromJson(x)));

String alcoholicModelToJson(List<AlcoholicModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AlcoholicModel {
    String? strDrink;
    String? strDrinkThumb;
    String? idDrink;

    AlcoholicModel({
        this.strDrink,
        this.strDrinkThumb,
        this.idDrink,
    });

    factory AlcoholicModel.fromJson(Map<String, dynamic> json) => AlcoholicModel(
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
      List<AlcoholicModel>.from(list.map((x) => AlcoholicModel.fromJson(x)));
}
