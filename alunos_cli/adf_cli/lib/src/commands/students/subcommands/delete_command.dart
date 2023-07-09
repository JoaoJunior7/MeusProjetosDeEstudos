import 'dart:io';

import 'package:args/command_runner.dart';

import '../../../repositories/student_repository.dart';

class DeleteCommand extends Command {
  StudentRepository studentRepository;

  @override
  String get description => 'Delete Student by id';

  @override
  String get name => 'delete';

  DeleteCommand(this.studentRepository) {
    argParser.addOption('id', help: 'Student ID', abbr: 'i');
  }

  @override
  Future<void> run() async {
    if (argResults?['id'] == null) {
      print('Por favor informe o id do aluno com o comando --id=0 ou -i 0');
      return;
    }
    final id = int.parse(argResults?['id']);

    print('Aguarde...');

    final students = await studentRepository.findById(id);

    print('Deseja realmente excluir o aluno ${students.name} ? (S ou N)');

    final confirmDel = stdin.readLineSync();
    print('------------------------------------');
    if (confirmDel?.toLowerCase() == 's') {
      await studentRepository.deleteById(id);
      print('--------------------');
      print('Aluno deletado com sucesso');
      print('--------------------');
    } else {
      print('--------------------');
      print('Operação cancelada');
      print('--------------------');
    }
  }
}
