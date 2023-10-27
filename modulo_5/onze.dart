import 'dart:io';

void main(){
  double valorT = 0;
List<double> valorPrazo = [0.03, 0.06, 0.09, 0.12, 0.15, 0.18, 0.21, 0.24, 0.27, 0.3];

  stdout.write("Digite o valor do carro: ");
  double valor = double.parse(stdin.readLineSync()!);

  print("\n Escolha a forma de pagamento: \n (1)A vista \n (2)A prazo ");
  int tipo = int.parse(stdin.readLineSync()!);

switch(tipo){
  
  case 1:
  print("\n Valor do veículo: $valor \n Desconto por pagamento a vista: 20% \n Valor final: ${valor - (valor * 0.2)}");
  break;

  case 2:
for(int i = 6, j = 0; i <= 60 &&  j < valorPrazo.length; i += 6, j ++){
    valorT = valor + (valor * valorPrazo[j]);
    print("Tabela de preços a prazo: \n Valor do veiculo: $valor \n Número de parcelas: $i \n Porcemtagem de juros: ${valorPrazo[j] * 100}% \n Valor final: $valorT \n"); 
  }
break;

  default:
  print("Opção inválida");
}
  
}