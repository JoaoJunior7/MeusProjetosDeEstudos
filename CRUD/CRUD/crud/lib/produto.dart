// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Produto {
  String? id;
  String? nome;
  double? preco;
  String? descricao;

  Produto({this.id, this.nome, this.preco, this.descricao});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'preco': preco,
      'descricao': descricao,
    };
  }

  factory Produto.fromMap(Map<String, dynamic> map) {
    return Produto(
      id: map['id'] != null ? map['id'] as String : null,
      nome: map['nome'] != null ? map['nome'] as String : null,
      preco: map['preco'] != null ? map['preco'] as double : null,
      descricao: map['descricao'] != null ? map['descricao'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Produto.fromJson(String source) =>
      Produto.fromMap(json.decode(source) as Map<String, dynamic>);
}
