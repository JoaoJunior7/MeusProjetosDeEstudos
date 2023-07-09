import 'dart:io';

import 'package:crud/produto.dart';
import 'database.dart';

void incluirProduto() {
  print("Informe o nome do produto:");
  String? nome = stdin.readLineSync();

  print("Informe o preço do produto:");
  String? precoStr = stdin.readLineSync();
  double? preco = double.tryParse(precoStr ?? '');

  if (preco == null) {
    print("Preço inválido. Produto não será incluído.");
    return;
  }

  print("Informe a descrição do produto:");
  String? descricao = stdin.readLineSync();

  Database.contador++;
  String id = Database.contador.toString();

  Produto produto =
      Produto(id: id, nome: nome, preco: preco, descricao: descricao);
  Database.produtos.add(produto);

  print("Produto incluído com sucesso!");
}
