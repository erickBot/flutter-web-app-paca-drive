// To parse this JSON data, do
//
//     final client = clientFromJson(jsonString);

import 'dart:convert';

Client clientFromJson(String str) => Client.fromJson(json.decode(str));

String clientToJson(Client data) => json.encode(data.toJson());

class Client {
  Client({
    this.id,
    this.username,
    this.email,
    this.password,
    this.token,
    this.phone,
    this.imageUrl,
    this.quantityTravel,
  });

  String id;
  String username;
  String email;
  String password;
  String token;
  String phone;
  String imageUrl;
  double quantityTravel;

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        token: json['token'],
        phone: json['phone'],
        imageUrl: json['imageUrl'],
        quantityTravel: json['quantityTravel']?.toDouble() ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "token": token,
        "phone": phone,
        "imageUrl": imageUrl,
        "quantityTravel": quantityTravel,
      };
}
