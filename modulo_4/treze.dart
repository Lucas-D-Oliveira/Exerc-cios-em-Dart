import 'dart:io';
void main(){
  print("Digite o valor do Produto: \n");
  String? vp = stdin.readLineSync();

  var vProd = double.parse(vp!);
   

  if (vProd <= 50){ 
    vProd = vProd + (vProd * 0.05);
  }

  
  if (vProd > 50 && vProd <= 100){ 
   vProd = vProd + (vProd * 0.1);
  }

  
  if (vProd > 100){ 
    vProd = vProd + (vProd * 0.15);
  }

  if (vProd <= 80){
    print("Valor do produto: $vProd , classificação: barato");
  }

if (vProd > 80 && vProd <= 120){
    print("Valor do produto: $vProd , classificação: normal");
  }

    if (vProd > 120 && vProd <= 200){
    print("Valor do produto: $vProd , classificação: caro");
  }

  if (vProd > 200){
    print("Valor do produto: $vProd , classificação: muito caro");
  }
  }

  
  