import 'dart:io';



List compara(List a){
List maior = [];
List menor = [];

    
  for (int i = 1; i < a.length; i++) {
   if(a[i] > 0){
   maior.add(a[i]);
}
else{
  menor.add(a[i]);
}
}
return [maior , menor];
}

void main(){

List X = [];

for(int i = 0; i < 10; i++){
print("Digite um valor inteiro: "); int valor = int.parse(stdin.readLineSync()!);
X.add(valor);
}


List result = compara(X);
List list1 = result[0];
List list2 = result[1];
print('$list1 \n $list2');
}