import 'dart:io';

void main(){

  print('Digite um verbo regular termiando em ER'); String verbo = stdin.readLineSync()!;

List listaV = verbo.split('');
int remove = 2;
List conjugado = [];
String result;


if (remove > 0 && remove <= listaV.length) {
  listaV.removeRange(listaV.length - remove, listaV.length);
} 

  conjugado = List<String>.from(listaV);
  conjugado.add('o');
  result = conjugado.join("");
  print('Eu: $result');

  conjugado = List<String>.from(listaV);
  conjugado.add('es');
  result = conjugado.join("");
  print('Tu: $result');

  conjugado = List<String>.from(listaV);
  conjugado.add('e');
  result = conjugado.join("");
  print('Ele: $result');

  conjugado = List<String>.from(listaV);
  conjugado.add('e');
  result = conjugado.join("");
  print('Ela: $result');

  conjugado = List<String>.from(listaV);
  conjugado.add('emos');
  result = conjugado.join("");
  print('Nós: $result');

  conjugado = List<String>.from(listaV);
  conjugado.add('eis');
  result = conjugado.join("");
  print('Vós: $result');

  conjugado = List<String>.from(listaV);
  conjugado.add('em');
  result = conjugado.join("");
  print('Eles: $result');

  conjugado = List<String>.from(listaV);
  conjugado.add('em');
  result = conjugado.join("");
  print('ELas: $result');
}