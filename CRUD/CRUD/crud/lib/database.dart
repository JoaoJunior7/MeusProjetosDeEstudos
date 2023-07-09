import 'dart:convert';
import 'dart:io';

import 'package:crud/produto.dart';

class Database {
  static List<Produto> produtos = [];
  static int contador = 0;

  // ...

  static void salvarProdutos() {
    final file = File('produtos.json');
    final jsonProdutos = produtos.map((produto) => produto.toJson()).toList();
    final jsonString = json.encode(jsonProdutos);
    file.writeAsStringSync(jsonString);
  }

  static void carregarProdutos() {
    final file = File('produtos.json');

    if (!file.existsSync()) {
      return;
    }

    final jsonString = file.readAsStringSync();
    final jsonProdutos = json.decode(jsonString);
    produtos = jsonProdutos
        .map<Produto>((jsonProduto) => Produto.fromJson(jsonProduto))
        .toList();
  }
}
