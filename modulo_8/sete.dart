import 'dart:io';


 double? media(List<double> a){
  double med = 0;
  for(int i = 0; i < a.length; i++){
    med += a[i];
  }
  med = med / a.length;
  return med;

}


void main(){
List<double> num = [];
bool roda = true;

   while(roda){
  print("Digite um número(0 termina o programa): "); double valor = double.parse(stdin.readLineSync()!); 
  if(valor == 0){
    roda = false; 
  }
  else{
  num.add(valor);
   }
  }

double? result = media(num);
print("A média dos números é: ${result!.toStringAsFixed(2)}");
}