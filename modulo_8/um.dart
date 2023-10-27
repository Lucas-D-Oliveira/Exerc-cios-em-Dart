import 'dart:io';
int? somaN (int n){
int soma = 0;
if(n > 0){
for(int i = 0; i <= n; i++){
  soma += 1;
}
}
return soma;
}

void main(){
print("Digite um numero: "); int num = int.parse(stdin.readLineSync()!);

int? result = somaN(num);
print("Soma dos números entre 1 e $num: $result");
}