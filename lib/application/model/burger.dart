// To parse this JSON data, do
//
//     final burger = burgerFromJson(jsonString);

import 'dart:convert';

List<Burger> burgerFromJson(String str) =>
    List<Burger>.from(json.decode(str).map((x) => Burger.fromJson(x)));

String burgerToJson(List<Burger> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Burger {
  Burger({
    required this.id,
    required this.name,
    required this.restaurant,
    required this.web,
    required this.description,
    required this.ingredients,
    required this.addresses,
  });

  int id;
  String name;
  String restaurant;
  String web;
  String description;
  List<String> ingredients;
  List<Address> addresses;

  factory Burger.fromJson(Map<String, dynamic> json) => Burger(
        id: json["id"],
        name: json["name"],
        restaurant: json["restaurant"],
        web: json["web"],
        description: json["description"],
        ingredients: List<String>.from(json["ingredients"].map((x) => x)),
        addresses: List<Address>.from(
            json["addresses"].map((x) => Address.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "restaurant": restaurant,
        "web": web,
        "description": description,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
        "addresses": List<dynamic>.from(addresses.map((x) => x.toJson())),
      };
}

class Address {
  Address({
    required this.addressAddressId,
    required this.number,
    required this.line1,
    required this.line2,
    required this.postcode,
    required this.country,
    required this.addressId,
  });

  int addressAddressId;
  String number;
  String line1;
  String line2;
  String postcode;
  String country;
  int addressId;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        addressAddressId: json["addressId"] == null ? null : json["addressId"],
        number: json["number"],
        line1: json["line1"],
        line2: json["line2"] == null ? null : json["line2"],
        postcode: json["postcode"],
        country: json["country"],
        addressId: json["addressID"] == null ? null : json["addressID"],
      );

  Map<String, dynamic> toJson() => {
        "addressId": addressAddressId == null ? null : addressAddressId,
        "number": number,
        "line1": line1,
        "line2": line2 == null ? null : line2,
        "postcode": postcode,
        "country": country,
        "addressID": addressId == null ? null : addressId,
      };
}
