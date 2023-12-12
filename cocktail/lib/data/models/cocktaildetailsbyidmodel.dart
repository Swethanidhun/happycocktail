// To parse this JSON data, do
//
//     final cocktailDetailsByIdModel = cocktailDetailsByIdModelFromJson(jsonString);

import 'dart:convert';

List<CocktailDetailsByIdModel> cocktailDetailsByIdModelFromJson(String str) => List<CocktailDetailsByIdModel>.from(json.decode(str).map((x) => CocktailDetailsByIdModel.fromJson(x)));

String cocktailDetailsByIdModelToJson(List<CocktailDetailsByIdModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CocktailDetailsByIdModel {
    String? strDrink;
    String? strDrinkThumb;
    String? idDrink;

    CocktailDetailsByIdModel({
        this.strDrink,
        this.strDrinkThumb,
        this.idDrink,
    });

    factory CocktailDetailsByIdModel.fromJson(Map<String, dynamic> json) => CocktailDetailsByIdModel(
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
      List<CocktailDetailsByIdModel>.from(list.map((x) => CocktailDetailsByIdModel.fromJson(x)));
}
