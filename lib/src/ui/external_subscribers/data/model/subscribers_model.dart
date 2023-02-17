import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class SubscribersModel extends Equatable {
  final String nome;
  final String email;
  final String modeloTelefone;
  final String telefone;
  final Timestamp? dataExpirar;

  const SubscribersModel(
      {required this.nome,
      required this.email,
      required this.modeloTelefone,
      required this.telefone,
      required this.dataExpirar});

  factory SubscribersModel.fromJson(Map<String, dynamic> json) {
    log(json.toString());
    return SubscribersModel(
      nome: json['nome'] ?? "",
      email: json['email'] ?? "",
      modeloTelefone: json['modeloTelefone'] ?? "",
      telefone: json['telefone'] ?? "",
      dataExpirar: json['dataExpirar'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "nome": nome,
      "email": email,
      "telefone": telefone,
      "modeloTelefone": modeloTelefone,
      "dataExpirar": dataExpirar
    };
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}
