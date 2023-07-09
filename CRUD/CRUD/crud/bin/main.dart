import 'package:crud/create_produto.dart';
import 'package:crud/listar_produtos.dart';
import 'package:crud/produto.dart';

void main() {
  incluirProduto(); // Inclui um produto

  // Exibe os produtos salvos
  List<Produto> produtos = lerProdutos();
  print("Produtos cadastrados:");
  for (var produto in produtos) {
    print("ID: ${produto.id}");
    print("Nome: ${produto.nome}");
    print("Preço: ${produto.preco}");
    print("Descrição: ${produto.descricao}");
    print("--------------------");
  }
}
