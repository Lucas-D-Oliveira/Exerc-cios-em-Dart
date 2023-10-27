
import 'dart:io';
void main(){
  print("Digite o valor do produto");
  String? vp = stdin.readLineSync();

  print("Digite o código do produto:");
  String ? cd = stdin.readLineSync();

  double pValor = double.parse(vp!);
  int pCod = int.parse(cd!);
  double vDesc ;

if (pValor > 30 && pValor <= 100){
vDesc = pValor * 0.1;
pValor = pValor - vDesc;

print("O produto de código $pCod teve um desconto de $vDesc, e custará agora $pValor.");
}

if (pValor > 100){
vDesc = pValor * 0.15;
pValor = pValor - vDesc;

print("O produto de código $pCod teve um desconto de $vDesc, e custará agora $pValor.");
}

if (pValor < 30){
  print("Não há desconto.");
}
}