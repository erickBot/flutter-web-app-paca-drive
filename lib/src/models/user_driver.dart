// To parse this JSON data, do
//
//     final driver = driverFromJson(jsonString);

import 'dart:convert';

Driver driverFromJson(String str) => Driver.fromJson(json.decode(str));

String driverToJson(Driver data) => json.encode(data.toJson());

class Driver {
  Driver({
    this.id,
    this.name,
    this.lastname,
    this.email,
    this.phone,
    this.numberbrevete,
    this.placaVehiculo,
    this.tipoVehiculo,
    this.token,
    this.imageUrl,
    this.quantityTravel,
    this.modeloVehiculo,
    this.suscription,
  });

  String id;
  String name;
  String lastname;
  String email;
  String phone;
  String numberbrevete;
  String placaVehiculo;
  String tipoVehiculo;
  String modeloVehiculo;
  String token;
  String imageUrl;
  double quantityTravel;
  double suscription;

  factory Driver.fromJson(Map<String, dynamic> json) => Driver(
        id: json["id"],
        name: json["name"],
        lastname: json["lastname"],
        email: json["email"],
        phone: json["phone"],
        numberbrevete: json["numberbrevete"],
        placaVehiculo: json["placaVehiculo"],
        tipoVehiculo: json['tipoVehiculo'],
        modeloVehiculo: json["modeloVehiculo"],
        token: json["token"],
        imageUrl: json["imageUrl"],
        quantityTravel: json["quantityTravel"]?.toDouble() ?? 0,
        suscription: json["suscription"]?.toDouble() ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "lastname": lastname,
        "email": email,
        "phone": phone,
        "numberbrevete": numberbrevete,
        "placaVehiculo": placaVehiculo,
        "tipoVehiculo": tipoVehiculo,
        "modeloVehiculo": modeloVehiculo,
        "token": token,
        "imageUrl": imageUrl,
        "quantityTravel": quantityTravel,
        "suscription": suscription,
      };
}
