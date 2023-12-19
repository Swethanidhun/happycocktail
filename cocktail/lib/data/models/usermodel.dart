// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String? id;
  String? username;
  String? email;
  String? password;

  UserModel({
    this.id,
    this.username,
    this.email,
    this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "password": password,
      };
  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data();
    return UserModel(
        email: data!['email'],
        password: data['password'],
        username: data['username'],
        id: document.id);
  }
}
