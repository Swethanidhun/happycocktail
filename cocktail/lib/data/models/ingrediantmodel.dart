// To parse this JSON data, do
//
//     final detailsmodel = detailsmodelFromJson(jsonString);

import 'dart:convert';

Detailsmodel detailsmodelFromJson(String str) => Detailsmodel.fromJson(json.decode(str));

String detailsmodelToJson(Detailsmodel data) => json.encode(data.toJson());

class Detailsmodel {
    List<Map<String, String?>>? drinks;

    Detailsmodel({
        this.drinks,
    });

    factory Detailsmodel.fromJson(Map<String, dynamic> json) => Detailsmodel(
        drinks: json["drinks"] == null ? [] : List<Map<String, String?>>.from(json["drinks"]!.map((x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
    );

    Map<String, dynamic> toJson() => {
        "drinks": drinks == null ? [] : List<dynamic>.from(drinks!.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
    };
    static listFromJson(list) =>
      List<Detailsmodel>.from(list.map((x) => Detailsmodel.fromJson(x)));
}

