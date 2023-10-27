import 'dart:io';

void main() {
  print("Digite o código do produto");
  String? c = stdin.readLineSync();

  print("Digite a quantidade comprada");
  String? q = stdin.readLineSync();

  int cod = int.parse(c!);
  int quant = int.parse(q!);
  double vNota;

  if (cod >= 1 && cod <= 10) 
  {
    vNota = quant * 10;

    if (vNota <= 250) {
      print(
          "Preço unitário: 10. Valor total: $vNota. Desconto: 5%. O Valor final é: ${vNota + (vNota * 0.05)} ");
    }

    if (vNota > 250 && vNota <= 500) {
      print(
          "Preço unitário: 10. Valor total: $vNota. Desconto: 10%. O Valor final é: ${vNota + (vNota * 0.1)} ");
    }

    if (vNota > 500) {
      print(
          "Preço unitário: 10. Valor total: $vNota. Desconto: 15%. O Valor final é: ${vNota + (vNota * 0.15)} ");
    }
  }

  if (cod >= 11 && cod <= 20) 
  { 
    vNota = quant * 15;

    if (vNota <= 250) {
      print(
          "Preço unitário: 15. Valor total: $vNota. Desconto: 5%. O Valor final é: ${vNota + (vNota * 0.05)} ");
    }

    if (vNota > 250 && vNota <= 500) {
      print(
          "Preço unitário: 15. Valor total: $vNota. Desconto: 10%. O Valor final é: ${vNota + (vNota * 0.1)} ");
    }

    if (vNota > 500) {
      print(
          "Preço unitário: 15. Valor total: $vNota. Desconto: 15%. O Valor final é: ${vNota + (vNota * 0.15)} ");
    }
  }

  if (cod >= 21 && cod <= 30) 
  {
    vNota = quant * 20;

    if (vNota <= 250) {
      print(
          "Preço unitário: 20. Valor total: $vNota. Desconto: 5%. O Valor final é: ${vNota + (vNota * 0.05)} ");
    }

    if (vNota > 250 && vNota <= 500) {
      print(
          "Preço unitário: 20. Valor total: $vNota. Desconto: 10%. O Valor final é: ${vNota + (vNota * 0.1)} ");
    }

    if (vNota > 500) {
      print(
          "Preço unitário: 20. Valor total: $vNota. Desconto: 15%. O Valor final é: ${vNota + (vNota * 0.15)} ");
    }
  }

  if (cod >= 31 && cod <= 40) 
  {
    vNota = quant * 30;

    if (vNota <= 250) {
      print(
          "Preço unitário: 30. Valor total: $vNota. Desconto: 5%. O Valor final é: ${vNota + (vNota * 0.05)} ");
    }

    if (vNota > 250 && vNota <= 500) {
      print(
          "Preço unitário: 30. Valor total: $vNota. Desconto: 10%. O Valor final é: ${vNota + (vNota * 0.1)} ");
    }

    if (vNota > 500) {
      print(
          "Preço unitário: 30. Valor total: $vNota. Desconto: 15%. O Valor final é: ${vNota + (vNota * 0.15)} ");
    }
  }
  
  if(cod > 41){
    print("Código inválido."); 
     }
}
