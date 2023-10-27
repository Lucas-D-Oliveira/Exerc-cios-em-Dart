import 'dart:io';

void main() {
  List<int> numeros = [];
  List<int> primos = [];
  for (int i = 1; i <= 10; i++) {
    stdout.write("Digite um número: ");
    int num = int.parse(stdin.readLineSync()!);
    numeros.add(num);

    bool primo = true;
    if (num <= 1) {
      primo = false;
    } else {
      for (int i = 2; i * i <= num; i++) {
        if (num % i == 0) {
          primo = false;
          break;
        }
      }
    }

    if (primo) {
      primos.add(num);
    }

  }

  if(primos.length == 0){
    print("Não há numeros primos");

  }
  else{
    print("Números primos: $primos ");
  }
}
