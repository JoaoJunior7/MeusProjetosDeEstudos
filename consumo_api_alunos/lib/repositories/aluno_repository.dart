import 'dart:convert';

import 'package:consumo_api_alunos/models/aluno.dart';
import 'package:http/http.dart' as http;

class AlunoRepository {
  Future<List<Aluno>> buscarTodos() async {
    final alunosResponse =
        await http.get(Uri.parse('http://localhost:8082/alunos'));

    final alunosList = jsonDecode(alunosResponse.body);

    final todosAlunos = alunosList.map<Aluno>((alunoMap) {
      return Aluno.fromMap(alunoMap);
    }).toList();

    return todosAlunos;
  }

  Future<Aluno> buscarPorId(int id) async {
    final alunosResponse =
        await http.get(Uri.parse('http://localhost:8082/alunos/$id'));
    return Aluno.fromJson(alunosResponse.body);
  }
}
