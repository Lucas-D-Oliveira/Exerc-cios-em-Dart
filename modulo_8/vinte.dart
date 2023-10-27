import 'dart:io';


 List calculos(List sal, List f){
  List fim = [];
    double soma = 0;

    //média salário
  for (int i = 0; i < sal.length; i++) {
   soma += sal[i];
}
soma = soma / sal.length;
fim.add(soma);

//média filhos
soma =0;
for (int i = 0; i < f.length; i++) {
   soma += f[i];
}
soma = soma / f.length;
fim.add(soma);

//maior salário
   double maior = sal[0];
  for (int i = 0; i < sal.length; i++) {
  if(maior < sal[i]){
    maior = sal[i];
  }
}

fim.add(maior);

// percentual salário
int cont = 0;
double per =0;
for (int i = 0; i < sal.length; i++) {
  if(sal[i] < 380){
    cont += 1;
  }
}

per = (cont / sal.length) * 100;

fim.add(per);

return fim;
 }

void main(){ 
   double sala = 0; double fi = 0; bool roda = true;
   List msal = []; List mfi = []; 
while(roda){
  
  print('Digite seu salário(0 termina o programa): '); sala = double.parse(stdin.readLineSync()!); if(sala == 0){roda = false; break;} msal.add(sala);

  print('Digite seu número de filhos: '); fi = double.parse(stdin.readLineSync()!); mfi.add(fi);
}
List result = calculos(msal, mfi);

print("Média dos salários :${result[0]} \n Média de filhos ${result[1]} \n Maior salário: ${result[2]} \n Percentual de pessoas com salário abaixo de 380: ${result[3]}%");

}