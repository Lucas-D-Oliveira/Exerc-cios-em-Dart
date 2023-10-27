import 'dart:io';

void main(){
bool saida = true; int q2 = 0; int q1 = 0; 
List<double> lucros = [];
List acao = [];
while(saida){
  stdout.write("Digite o tipo da ação: ");
  String?  tipo = stdin.readLineSync()!;

  if(tipo == "F"){
    break;
  }
  
  acao.add(tipo);

stdout.write("Digite o valor de compra: ");
   double compra = double.parse(stdin.readLineSync()!);

stdout.write("Digite valor de venda: ");
  double  venda = double.parse(stdin.readLineSync()!);

double lcr = venda - compra; lucros.add(lcr); if(lcr > 1000){ q1 = q1 + 1; } if(lcr < 200){ q2 = q2 + 1; } 

}
double lcrT = 0;

for(int i = 0; i < lucros.length; i++){
  double l1 =lucros[i]; String a1 = acao[i]; lcrT += lucros[i];

print("Lucro de cada ação: $a1 = $l1 \n");

}
print("Lucro total da empresa: $lcrT \n Ações com lucro maior que 1000: $q1 \n Ações com lucro menor que 200: $q2");
}