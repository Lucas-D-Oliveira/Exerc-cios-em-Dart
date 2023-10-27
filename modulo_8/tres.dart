import 'dart:io';

String? compara(List a, List b){
String? id;
for(int i = 0; i < 5; i++){
  if(a[i] != b[i]){
    id = i.toString();
    break;
}
else{
id = '0';}
}
return id;
}

void main(){
List list1 = [];
List list2 = [];
for(int i = 0; i < 5;i++){
  print("Digite um caracter da lista 1: "); String carac = stdin.readLineSync()!; list1.add(carac);
}
for(int i = 0; i < 5;i++){
  print("Digite um caracter da lista 2: "); String carac = stdin.readLineSync()!; list2.add(carac);
}
String? ind = compara(list1, list2);
print("$list1 \n");
print(list2);
if(ind == "0"){
  print("Todos os caracteres são iguais");
}
else{
  print("indice dos primeiro caracter diferente: $ind");
}
}