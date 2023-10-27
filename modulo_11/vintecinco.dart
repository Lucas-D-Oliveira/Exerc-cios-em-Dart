import 'dart:io';

Future<void> procura(double desc,double valorMe, double valorMa) async {
  final arquivo = File('produtos.dat');
  final conteudoR = await arquivo.readAsString();
  final linhasR = conteudoR.split('\n');
  bool encontrouR = false;

  for (var linhaR in linhasR.skip(1)) {
    final elementosR = linhaR.split(', ');
    if (elementosR.isNotEmpty && elementosR.length >= 3) {
      final valorProduto = double.parse(elementosR[2].trim());
      

      if (valorProduto < valorMa && valorProduto > valorMe) {
        encontrouR = true;

        String precoString = elementosR[2].trim();
      if (precoString.isNotEmpty) {
        try {
          double valor = double.parse(precoString);
          valor -= valor * desc;
          elementosR[2] = valor.toString();
        } catch (e) {
        }
      } 


        print('Produtos com preço entre + o desconto: $valorMe e $valorMa.');
        print("$linhaR");
        
      }
    }
  }

  if (!encontrouR) {
    print('\nNão há produtos que atenda os requisitos');
  }
}

void main() {
  print('Digite o desconto desejado em decimal: '); double desc = double.parse(stdin.readLineSync()!); 
  print('Digite o valor mínimo: '); double valor1 = double.parse(stdin.readLineSync()!); 
  print('Digite o valor maximo: '); double valor2 = double.parse(stdin.readLineSync()!); 
    procura(desc, valor1, valor2);
}
