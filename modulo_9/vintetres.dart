import 'dart:io';

void main(){
  print('Digite uma sequencia: '); String sequencia = stdin.readLineSync()!;
  print('Digite uma subsequencia a ser procurada: '); String subsequencia = stdin.readLineSync()!;

  List sub = sequencia.split(subsequencia);

  print('cadeia: $sequencia \n');
  print('subcadeia: $subsequencia \n');

  int cont = 0;

  cont = (sub.length -1);

  print('Subcadeia aparece $cont vez(es) na cadeia.');
}