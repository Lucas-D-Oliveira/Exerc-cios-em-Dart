import 'dart:io';

void main (){
  List<int> preco = []; List nomes = []; List newNomes = [];
   int cont1 = 0; int cont2 = 0; double medA = 0;
  for(int a = 1; a <= 6;a++){
    print("Digite o nome do produto: "); String nome = stdin.readLineSync()!; nomes.add(nome); 
    print("Digite o preço do produto: "); int valor = int.parse(stdin.readLineSync()!); preco.add(valor);
    
  }
  for(int i = 0; i < nomes.length;i++){
   
    if(preco[i] < 50){
      cont1 += 1;
    }
    if(preco[i] >= 50 && preco[i] <= 100){
      newNomes.add(nomes[i]); 
         }
    if(preco[i] > 100){
      cont2 += 1;
      medA += preco[i];
      
    }
  }
  print("Produtos com preço entre 50 e 100: $newNomes \n");
  print("Quantidade de produtos com preço inferior a 50: $cont1 \n Média dos preços dos produtos com preço acima de 100: ${medA / cont2} \n ");
}