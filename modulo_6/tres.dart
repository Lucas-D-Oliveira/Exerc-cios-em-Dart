
import 'dart:io';

void main(){
List codPro = []; List quantPro = [];
bool roda = true; int codP = 0; int codCompraP = 0; int quantP = 0; int quantCompraP = 0; int codC = 0; int saida;

for(int i = 1; i <= 3; i++){
print("Digite o código do produto: "); codP = int.parse(stdin.readLineSync()!); codPro.add(codP);
print("Digite a quantidade em estoque: "); quantP = int.parse(stdin.readLineSync()!); quantPro.add(quantP);
}
while(roda){

  print("Digite seu código: "); codC = int.parse(stdin.readLineSync()!); saida = codC;

  if(saida == 0){
    break;
  }
  print("Digite o código do produto: "); codCompraP = int.parse(stdin.readLineSync()!); 
  print("Digite a quantidade desejada: "); quantCompraP = int.parse(stdin.readLineSync()!); 

  int posi = codPro.indexOf(codCompraP);

  if(posi != -1){
  
    quantP = quantPro[posi];
    if(quantCompraP <= quantP){
      print("Pedido atendido. Obrigado e volte sempre");

      quantPro[posi] = quantP - quantCompraP;
    }
    else{print("Não temos estoque suficiente desta mercadoria");}
    }

    else{print("Código enexistente");}
  
}
  for(int j = 0; j < codPro.length; j++){
    int vcodPro = codPro[j];int vquantPro = quantPro[j];
    print("Novo estoque: $vcodPro -- $vquantPro \n");
  }
  
}