import 'dart:io';

void main() {
  bool roda = true; List mais50 = []; double med = 0; int q = 0; double aT = 0;

  while(roda){
  stdout.write("Digite sua idade: \n");
  int idade = int.parse(stdin.readLineSync()!);
  
  if(idade <= 0){
    break;
  }

  stdout.write("Digite sua altura \n");
  double? altura = double.parse(stdin.readLineSync()!);

if(idade > 50){
  mais50.add(altura);
  }
}
for(int i = 0; i < mais50.length; i++){
aT += mais50[i];
q = mais50.length;
med = aT / q;
med.toStringAsFixed(1);
  }

print("Média da altura das pessoas acima dos 50 anos: ${med}");
}






