import 'dart:io';

void main (){
  stdout.write("Digite o número: ");
  int num = int.parse(stdin.readLineSync()!);

  for(int i = 0; i <= 10; i++ ){
    //num = num * i;
    print("$num X $i = ${num * i}");
  }
}