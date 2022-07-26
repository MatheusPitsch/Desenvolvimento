// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:exercicios/app/domain/entities/cell_phone_entities.dart';

class CellPhoneDto extends CellPhoneEntities {
  
String brand;
  String model;
  double price;
  double storage;
  int qtd;


  CellPhoneDto({
    required this.brand,
    required this.model,
    required this.price,
    required this.storage,
    required this.qtd,
  }): super(brand : brand, model: model,price: price,storage: storage,qtd: qtd,);


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brand': brand,
      'model': model,
      'price': price,
      'storage': storage,
      'qtd': qtd,
    };
  }

  factory CellPhoneDto.fromMap(Map<String, dynamic> map) {
    return CellPhoneDto(
      brand: map['brand'] as String,
      model: map['model'] as String,
      price: map['price'] as double,
      storage: map['storage'] as double,
      qtd: map['qtd'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CellPhoneDto.fromJson(String source) => CellPhoneDto.fromMap(json.decode(source) as Map<String, dynamic>);
}
