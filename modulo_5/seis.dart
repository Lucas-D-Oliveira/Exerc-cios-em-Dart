import 'dart:io';

void main() {
  String? tipo;
  double valor;
  double totalP = 0;
  double totalV = 0;

  for (int j = 1; j <= 15; j++) {

    stdout.write("Digite o tipo de transação:\n (V)vista \n (P)prazo ");
        tipo = stdin.readLineSync();

    if (tipo == "v" || tipo == "V" || tipo == "p" || tipo == "P") {
      
        

        switch (tipo) {
          case "V": 
          case "v":
            stdout.write("Digite o valor da compra: ");
            valor = double.parse(stdin.readLineSync()!);
            totalV = totalV + valor;
            break;

          case "P": 
          case "p":
            stdout.write("Digite o valor da compra: ");
            valor = double.parse(stdin.readLineSync()!);
            totalP = totalP + valor;
            break;
        }
      }
    

  else{
      print("Escolha uma opção válida");
      break;
    }
  }
print(
      "Valor total de compras a vista: $totalV \n Valor total de compras a vista $totalP \n Valor total das compras efetuadas: ${totalP + totalV} \n Valor da primeira prestação das compras a prazo ${totalP / 3}");
}

