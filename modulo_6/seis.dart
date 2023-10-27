import 'dart:io';

void main(){
List nomes = []; List<double> vendas = []; List<double> comissao = []; 
double total = 0; double maiorV = 0; double menorV = 0; String? maiorN; String? menorN; bool check = false;

  for(int i =1; i < 4; i++){
    print("Nome do vendedor: "); String name = stdin.readLineSync()!; nomes.add(name);
    print("Total de vendas: "); double valor = double.parse(stdin.readLineSync()!); vendas.add(valor);
    print("Comissão do vendedor em decimal: "); double com = double.parse(stdin.readLineSync()!); comissao.add(com);
  }
  
  for(int j = 0; j < nomes.length; j++){
    double rel; 
    rel = vendas[j] * comissao[j];
    total += vendas[j];

    if(!check){
      menorV = rel;
      check = true;
    }

    if(maiorV < rel){
      maiorV = rel;
      maiorN = nomes[j]; 
    }

    if(menorV > rel){
      menorV = rel;
      menorN = nomes[j]; 
    }

    print("\n Relatório de pagamentos: \n Vendedor: ${nomes[j]} -- Comissão: ${comissao[j] * 100}% -- Valor a receber: $rel");
  }
print(" \n Total de vendas geral: $total");
print(" \n Vendedor a receber o maior valor: $maiorN -- $maiorV");
print(" \n Vendedor a receber o menor valor: $menorN -- $menorV");
}