// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:consumo_api_alunos/models/cidade.dart';
import 'package:consumo_api_alunos/models/telefone.dart';

class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;
  Telefone telefone;
  Endereco({
    required this.rua,
    required this.numero,
    required this.cep,
    required this.cidade,
    required this.telefone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rua': rua,
      'numero': numero,
      'CEP': cep,
      'cidade': cidade.toMap(),
      'telefone': telefone.toMap(),
    };
  }

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: map['rua'] ?? '',
      numero: map['numero'] ?? 0,
      cep: map['CEP'] ?? '',
      cidade: Cidade.fromMap(map['cidade'] ?? <String, dynamic>{}),
      telefone: Telefone.fromMap(map['telefone'] ?? <String, dynamic>{}),
    );
  }

  String toJson() => json.encode(toMap());

  factory Endereco.fromJson(String json) => Endereco.fromMap(jsonDecode(json));
}
