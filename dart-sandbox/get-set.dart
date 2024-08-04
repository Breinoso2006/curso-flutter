void main() {
  Pessoa bruno = Pessoa(nome: 'Bruno', sobrenome: 'Reinoso', idade: 27);
  bruno
    ..saldo = 123.4
    ..possuiDividas = true
    ..saldo
    ..possuiDividas;

  print(bruno.cpf);

}

class Pessoa{
  Pessoa({required this.nome, required this.sobrenome, required idade});

  String nome, sobrenome;
  num? idade, _saldo;
  bool? _dividas;
  late int cpf = retornaCPF();

  set saldo(num? valor){
    if(valor != null) {
      this._saldo = valor;
    }
  }

  num? get saldo {
    if(this._saldo != null){
      print(this._saldo);
    }
    return this._saldo;
  }

  set possuiDividas(bool? valor){
    if(valor != null) {
      this._dividas = valor;
    }
  }

  bool? get possuiDividas {
    if(this._dividas != null){
      print(this._dividas);
    }
    return this._dividas;
  }
  
  int retornaCPF() {
    return 155810093209;
  }
}