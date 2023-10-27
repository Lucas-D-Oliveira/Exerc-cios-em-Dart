import 'dart:io';
checktri (List lados){
  int soma = 0;
  String ?resu;
  String fim1;
resu = "É um triangulo";
  soma = lados[1] + lados[2];
if(lados[0] <= soma ){
resu = "Não é triangulo";
fim1 = resu;
  }

soma = lados[0] + lados[2];

 if(lados[1] <= soma ){
resu = "Não é triangulo";
fim1 = resu;
  }

soma = lados[1] + lados[0];
 if(lados[2] > soma ){
    resu = "Não é triangulo";
fim1 = resu;
  }

  fim1 = resu;

  return fim1;
  }

  checkTipo (List lados2){
      String? tipo;
  String fim2 ;

if (lados2[1] == lados2[2] && lados2[1] == lados2[0]){
  tipo = "Equilátero";
}
else if(lados2[1] == lados2[2] || lados2[1] == lados2[0]){
  tipo = 'Isósceles';
}

else{
  tipo = 'Escaleno';
}

fim2 = tipo;
  return fim2;
}


void main(){
List lado = []; 

  print("Digite um valor para o primeiro lado: "); int? l = int.parse(stdin.readLineSync()!); lado.add(l);
   print("Digite um valor para o segundo lado: ");  l = int.parse(stdin.readLineSync()!); lado.add(l);
    print("Digite um valor para o terceiro lado: ");  l = int.parse(stdin.readLineSync()!); lado.add(l);

    String result1 = checktri(lado);
    String result2 = checkTipo(lado);
  if(result1 ==  "É um triangulo"){
    print("${result1} do tipo ${result2}");
  }
  else{
    print("${result1}");
  }
    
}