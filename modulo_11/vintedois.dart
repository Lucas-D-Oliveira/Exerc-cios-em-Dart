import 'dart:io';

Future<void> procura(double valor) async {
  final arquivo = File('produtos.dat');
  final conteudoR = await arquivo.readAsString();
  final linhasR = conteudoR.split('\n');
  bool encontrouR = false;

  for (var linhaR in linhasR.skip(1)) {
    final elementosR = linhaR.split(', ');
    if (elementosR.isNotEmpty && elementosR.length > 0) {
      final valorProduto = double.parse(elementosR[2].trim());
      if (valorProduto < valor) {
        encontrouR = true;
        print('Produtos com preço inferio a 15.');
        print("$linhaR");
        break;
      }
    }
  }

  if (!encontrouR) {
    print('\nNão há produtos com preços abaixo de $valor');
  }
}

void main() {
  
    procura(15);
}
