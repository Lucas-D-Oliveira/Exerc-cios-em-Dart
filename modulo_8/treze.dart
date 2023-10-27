import 'dart:io';


 double media(List sal){
    double soma = 0;
  for (int i = 0; i < sal.length; i++) {
   soma += sal[i];
}
soma = soma / sal.length;
return soma;
}

 double maiorID(List idade){
    double maior = idade[0];
  for (int i = 0; i < idade.length; i++) {
  if(maior < idade[i]){
    maior = idade[i];
  }
}

return maior;
}

 double menorID(List idade){
  double menor = idade[0];
  for (int i = 0; i < idade.length; i++) {
  if(menor > idade[i]){
    menor = idade[i];
  }
}

return menor;
}

 double mulher(List s, List f ,List sal){
    double cont = 0;
  for (int i = 0; i < s.length; i++) {
  if(s[i] == 'm'){
    
    if(f[i] == 3){
      if(sal[i] <= 500){
        cont += 1;
      }
    }
  }
}

return cont;
}


void main(){ 
  double id = 0; String sex; double sala = 0; double fi = 0;
  List midade = []; List msex = []; List msal = []; List mfi = []; 
for(int i = 0; i < 4; i++){
  print("Digite sua idade: "); id = double.parse(stdin.readLineSync()!); midade.add(id);

  print("Digite seu sexo: ");  sex = (stdin.readLineSync()!); msex.add(sex);

  print('Digite seu salário: '); sala = double.parse(stdin.readLineSync()!); msal.add(sala);

  print('Digite seu número de filhos: '); fi = double.parse(stdin.readLineSync()!); mfi.add(fi);
}
double Maid = maiorID(midade); double Meid = menorID(midade); double rsal = media(msal); double rmu = mulher(msex, mfi, msal);

print("Média dos salários :$rsal \n Maior idade: $Maid \n Menor idade: $Meid \n Quantidade de mulheres com 3 filhos e renda de até 500: $rmu");

}