import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cidade {
  int id;
  String nome;
  Cidade({
    required this.id,
    required this.nome,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
    };
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      id: map['id'] ?? 0,
      nome: map['nome'] ?? '',
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Cidade.fromJson(String json) => Cidade.fromMap(jsonDecode(json));
}
