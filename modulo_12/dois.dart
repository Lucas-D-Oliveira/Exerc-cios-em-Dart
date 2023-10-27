import 'dart:io';

class Pessoa {
  late String nome;
  late int idade;


  void calcular(){
    int idadec = 0;
    idadec = this.idade; 
    idadec = idade * 12;
    print('$nome sua idade me meses é: $idadec\n');
  }

  void idadeFut(){
    int futu =0;
    futu = this.idade;
    futu += 2050 - 2023;
    print('$nome sua idade em 2050 é: $futu\n');
    
  }

}

  void main(){ 
    Pessoa p1 = Pessoa(); Pessoa p2 = Pessoa();
    List<Pessoa> pe = [p1, p2];

    for(int i = 0; i < pe.length; i++){
      print('Qual seu nome? :'); String nom = stdin.readLineSync()!; pe[i].nome = nom;
    print('Digite a idade da pessoa: '); int id = int.parse(stdin.readLineSync()!); pe[i].idade = id;
    }
    
    p1.calcular();
    p1.idadeFut();

    p2.calcular();
    p2.idadeFut();


  }