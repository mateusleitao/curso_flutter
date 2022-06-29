import 'pessoa.dart';

main() {
  var p1 = Pessoa();
  p1.nome = 'Mateus';
  // p1._cpf = '080.158.423-01';

  print('o CPF do ${p1.nome} eh ${p1.cpf}');
}
