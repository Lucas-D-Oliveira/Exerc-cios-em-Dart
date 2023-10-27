

import 'dart:io';

int MDC( int c, int d){
    if (d == 0) {
    return c;
  }
  return MDC(d, c % d);
}

int? MMC(int a, int b){
int mdc = MDC(a, b);
int multi = (a * b).abs();
int mmc = (multi ~/ mdc);
return mmc;
}



void main(){


 int num1 = 0; int num2 = 0;
 
 print('Digite um número:' ); num1 = int.parse(stdin.readLineSync()!);
 print('Digite outro número:' ); num2 = int.parse(stdin.readLineSync()!);


int? result = MMC(num1, num2);

    print("MMC dos números: ${result}");
}