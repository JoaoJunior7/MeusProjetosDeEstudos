void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
//   ! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  print('1 - Apresente os pacientes com mais de 20 anos e print o nome deles');
  print('');
  print('Pacientes com mais de 20 anos');
  for (final i in pacientes) {
    final nomesPacientes = i.split('|');

    final nomesPacientes1 = int.tryParse(nomesPacientes[1]) ?? 0;

    if (nomesPacientes1 > 20) {
      print(nomesPacientes[0]);
    }
  }

  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  print('');
  print(
      '2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)');
  print('');

  final desenvolvedor = [];
  final estudante = [];
  final dentista = [];
  final jornalista = [];

  for (final i in pacientes) {
    final dadosPacientes = i.split('|');

    final nomePacientes = dadosPacientes[0];
    final profissaoPacientes = dadosPacientes[2].toLowerCase();

    if (profissaoPacientes == 'desenvolvedor') {
      desenvolvedor.add(nomePacientes);
    }

    if (profissaoPacientes == 'estudante') {
      estudante.add(nomePacientes);
    }

    if (profissaoPacientes == 'dentista') {
      dentista.add(nomePacientes);
    }

    if (profissaoPacientes == 'jornalista') {
      jornalista.add(nomePacientes);
    }
  }

  print('Tem ${desenvolvedor.length} desenvolvedores');
  desenvolvedor.forEach(print);
  print('');
  print('Tem ${estudante.length} estudantes');
  estudante.forEach(print);
  print('');
  print('Tem ${dentista.length} dentista');
  dentista.forEach(print);
  print('');
  print('Tem ${jornalista.length} jornalista');
  jornalista.forEach(print);
  print('');

  //! 3 - Apresente a quantidade de pacientes que moram em SP
  print('');
  print('3 - Apresente a quantidade de pacientes que moram em SP');
  print('');

  var quantidadePacientes = [];

  for (final i in pacientes) {
    final dadosPacientes = i.split('|');
    final nomesPacientes = dadosPacientes[0];

    if (dadosPacientes[3] == 'SP') {
      quantidadePacientes.add(nomesPacientes);
    }
  }

  print(
      'A quantidade de pacientes que moram em SP é ${quantidadePacientes.length}');
  quantidadePacientes.forEach(print);
}



// Coisas que eu entendi melhor nesse desafio
// for (final i in pacientes) {                       Varrer uma lista e manipular ela
//     final dadosPacientes = i.split('|');
// }
// 
// print('A quantidade de pacientes que moram em SP é ${quantidadePacientes.length}');    Duas formas de print, e retornando a quantidade de itens numa lista
// quantidadePacientes.forEach(print);              Essa forma de print, retora um item abaixo do outro
// 
//  desenvolvedor.add(nomePacientes);     Para acrescentar uma informação numa lista
// 
  // final desenvolvedor = [];        Otima forma de dividir um problema
  // final estudante = [];
  // final dentista = [];
  // final jornalista = []

  // final nomesPacientes1 = int.tryParse(nomesPacientes[1]) ?? 0;  realmente entendi como usar o int.tryParse()

  // Otima aplicação do IF para fazer uma condicional