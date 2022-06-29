class Pessoa {
  String? nome;
  String? _cpf;

  set cpf(String NovoCPF) {
    this._cpf = NovoCPF;
  }

  get cpf {
    return _cpf;
  }
}
