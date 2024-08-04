void main() {
  List<Animal> animais = [];
  Cachorro cachorro1 = Cachorro("Bruno", "Humana", 27);
  Gato gato1 = Gato("Mariana", "Humana", 25);
  animais
    ..add(cachorro1)
    ..add(gato1);

  Animal primeiro = animais.first;

  if (primeiro is Cachorro) {
    primeiro.latir();
  } else if (primeiro is Gato){
    primeiro.miar();
  }
  
  cachorro1.comer();
  print(cachorro1);
}

class Animal {
  String? raca;
  int? idade;

  Animal(this.raca, this.idade);

  void comer() {
    print("Comendo.");
  }

  void correr() {
    print("Correndo");
  }

}

class Cachorro extends Animal {
  String? nome;

  Cachorro(String this.nome, String raca, int idade) : super(raca, idade);

  void latir() {
    print("Latindo");
  }

  @override
  void comer() {
    super.comer();
    print("Comendo ração.");
  }

  @override
  String toString() {
    return "Nome: ${this.nome}\nIdade: ${this.idade}";
  }
}

class Gato extends Animal {
  String? nome;

  Gato(String this.nome, String raca, int idade) : super(raca, idade);

  void miar() {
    print("Miando");
  }
}
