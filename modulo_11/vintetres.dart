import 'dart:io';

Future<void> procura(String letra,double valorMe, double valorMa) async {
  final arquivo = File('produtos.dat');
  final conteudoR = await arquivo.readAsString();
  final linhasR = conteudoR.split('\n');
  bool encontrouR = false;

  for (var linhaR in linhasR.skip(1)) {
    final elementosR = linhaR.split(', ');
    if (elementosR.isNotEmpty && elementosR.length >= 3) {
      final valorProduto = double.parse(elementosR[2].trim());
      String descricao = elementosR[1].trim();

      if (valorProduto < valorMa && valorProduto > valorMe && descricao.startsWith(letra)) {
        encontrouR = true;
        print('Produtos com preço entre $valorMe e $valorMa, começados em $letra.');
        print("$linhaR");
        
      }
    }
  }

  if (!encontrouR) {
    print('\nNão há produtos que atenda os requisitos');
  }
}

void main() {
  print('Digite a inicial desejada: '); String letra = stdin.readLineSync()!; 
  print('Digite o valor mínimo: '); double valor1 = double.parse(stdin.readLineSync()!); 
  print('Digite o valor maximo: '); double valor2 = double.parse(stdin.readLineSync()!); 
    procura(letra, valor1, valor2);
}
