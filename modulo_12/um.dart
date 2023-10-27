import 'dart:io';

class Carro {
  late int placa;
  late int ano;
  int conta = 0;
  int total = 0;

  void imposto(int atu) {
    this.ano = ano;
    int fut = atu + 9;
    int imp = 500;
    int cont = 0;

    bool primeiro = true;
    for (int i = ano; i <= fut; i++) {
      if (primeiro) {
        imp += 100;
        primeiro = false;
      }
      imp = imp - 100;
      if (imp < 100) {
        imp = 100;
      }
      cont += 1;
      if(i >= atu){
         total += imp;
      }
    
      if (cont >= 10) {
        imp = 0;
        print('Carro de placa: $placa -- Ano: $i -- Imposto: $imp \n\n');
        if(i <= atu){
          this.conta += 1;
        }
        break;
      }
      print('Carro de placa: $placa -- Ano: $i -- Imposto: $imp \n');
    }
    print('Total de impostos a ser pago: ${total -100}');
    
  }
}

void main() {
  Carro a = Carro(); Carro b = Carro(); Carro c = Carro(); Carro d = Carro(); Carro e = Carro();
  List<Carro> carros = [a, b, c, d, e, ];

  for(int i = 0; i < carros.length; i++){
     print('Digite o ano do carro ${i + 1}º: '); int anoC = int.parse(stdin.readLineSync()!);
      carros[i].ano = anoC;
  }
  
  print('Digite o ano atual'); int anoT = int.parse(stdin.readLineSync()!);
  
  a.placa = 254;
  a.imposto(anoT);

  
  b.placa = 854;
  b.imposto(anoT);

  c.placa = 785;
  c.imposto(anoT);


  d.placa = 715;
  d.imposto(anoT);


  e.placa = 061;
  e.imposto(anoT);

  int isento = 0;
  for (Carro carro in carros) {
    isento += carro.conta;
  }

  print('\n Quantidade de carros que não pagam impostos: $isento');
}
