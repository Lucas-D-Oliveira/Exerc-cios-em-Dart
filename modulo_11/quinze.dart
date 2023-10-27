import 'dart:io';

void main() {

 final String produtos = 'Código, Descrição, Preço';




  final arquivo = File('produtos.dat');


  arquivo.writeAsStringSync(produtos);


  
}
