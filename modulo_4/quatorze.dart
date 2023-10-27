import 'dart:io';
void main(){
  print("Digite o valor do seu salário");
  String? sl = stdin.readLineSync();

  int nSal = int.parse(sl!);
  

  if (nSal <= 300){ 
    
    print("Seu salário liquido é de: ${(nSal * 0.5) + nSal}");
  }

  if (nSal > 300 && nSal <= 500){
    
    print("Seu salário liquido é de: ${(nSal * 0.4) + nSal}");
  }

    if (nSal > 500 && nSal <= 700){
    
    print("Seu salário liquido é de: ${(nSal * 0.3) + nSal}");
  }

    if (nSal > 700 && nSal <= 800){
    
    print("Seu salário liquido é de: ${(nSal * 0.2) + nSal}");
  
  }

  if (nSal > 800 && nSal <= 1000){
    
    print("Seu salário liquido é de: ${(nSal * 0.1) + nSal}");
  }
   
   if (nSal > 1000){
    
    print("Seu salário liquido é de: ${(nSal * 0.05
    
    ) + nSal}");
  }
  }
  