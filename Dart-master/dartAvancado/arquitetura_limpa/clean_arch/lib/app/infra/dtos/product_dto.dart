// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:clean_arch/app/domain/entities/producty_entity.dart';

//DTO é o data transfomr object
//é ele que transformara nossos dados json em object dart
//Ele será um reflexo do nosso Entity, porem poderemos ter os atributos com nomes diferentes,
//ja que esse nomes aqui no DTO precisarão ser um reflexo dos campos na API

class ProductDto extends ProductyEntity {
  int ide;
  String nameProduct;
  String brand;
  String category;
  double price;
  int quantity;

//como nos temos que extender de ProductEnitity, temos que passar os valores dessa classe
//para o product entity, fazemos isso atraves do: super

  ProductDto({
    required this.ide,
    required this.nameProduct,
    required this.brand,
    required this.category,
    required this.price,
    required this.quantity,
  }) : super(
            id: ide,
            name: nameProduct,
            brand: brand,
            category: category,
            qtd: quantity,
            price: price);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameProduct': nameProduct,
      'brand': brand,
      'category': category,
      'price': price,
      'quantity': quantity,
    };
  }

  factory ProductDto.fromMap(Map<String, dynamic> map) {
    return ProductDto(
      ide: map['id'] as int,
      nameProduct: map['nameProduct'] as String,
      brand: map['brand'] as String,
      category: map['category'] as String,
      price: map['price'] as double,
      quantity: map['quantity'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDto.fromJson(String source) =>
      ProductDto.fromMap(json.decode(source) as Map<String, dynamic>);
}

//Aqui dto podera validaçoes de dados, conversão, tratamentos.
//Porem tratamentos de erros com try catch ficara nos datasources
