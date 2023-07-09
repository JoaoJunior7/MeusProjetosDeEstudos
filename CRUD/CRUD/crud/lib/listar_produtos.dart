import 'package:crud/produto.dart';

import 'database.dart';

List<Produto> lerProdutos() {
  return Database.produtos;
}
