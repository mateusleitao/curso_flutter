printProduct(int unit, {String? nome, double? notas}) {
  for (var i = 0; i < unit; i++) {
    print('Aluno ${nome} passou com uma nota de ${notas}');
  }
}

class Alunos {
  String? nome;
  double? notas;

  Alunos({this.nome, this.notas});
}

main() {
  var aluno1 = Alunos(nome: 'Joaozinho', notas: 9.8);
  printProduct(3, nome: aluno1.nome, notas: aluno1.notas);
}
