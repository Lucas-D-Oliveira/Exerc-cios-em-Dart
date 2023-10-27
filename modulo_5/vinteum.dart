import 'dart:io';

void main() {
  bool roda = true; double v1 = 0; double v2 = 0; double v3 = 0; double v4 = 0; int vb = 0; int vn = 0; double vt = 0;

  while(roda){
  stdout.write("Escolha uma opção:\n (1, 2, 3, 4)Para o respectivo candidato \n (5)Voto nulo \n (6)Voto em branco \n (0)Sair \n");
  int? voto = int.tryParse(stdin.readLineSync()!);
  
  if(voto == 0){
    break;
  }

switch(voto){
  
  case 1:
   v1 = v1 + 1;
  break;

  case 2:
   v2 = v2 + 1; 
  break;

  case 3:
   v3 = v3 + 1; 
  break;

  case 4:
   v4 = v4 + 1; 
  break;

  case 5:
   vn = vn + 1; 
  break;

  case 6:
   vb = vb + 1; 
  break;

  default:
  print("Opção inválida \n");
  
} 
}
double vbp = 0; double vnp = 0;
vt = v1 + v2 + v3 + v4 + vn + vb;
vbp = (vb / vt) * 100; vnp = (vn / vt) * 100;
vbp.toStringAsFixed(1); vnp.toStringAsFixed(1);
print("Votos totais:\n candidato 1:$v1 \n candidato 2:$v2 \n candidato 3:$v3 \n candidato 4:$v4 \n Votos nulos :$vn igual à $vnp% \n Votos em branco :$vb igual à $vbp% \n");
}






