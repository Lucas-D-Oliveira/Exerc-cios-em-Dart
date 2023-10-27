import 'dart:io';

Future<void> procura(double desc, double valorMe, double valorMa) async {
  final arquivo = File('produtos.dat');
  final conteudoR = await arquivo.readAsString();
  final linhasR = conteudoR.split('\n');
  bool encontrouR = false;

  for (var linhaR in linhasR.skip(1)) {
    final elementosR = linhaR.split(', ');
    if (elementosR.isNotEmpty && elementosR.length >= 3) {
      final valorProduto = double.tryParse(elementosR[2].trim());

      if (valorProduto != null && valorProduto >= valorMe && valorProduto <= valorMa) {
        encontrouR = true;

        double valor = valorProduto - (valorProduto * desc);
        elementosR[2] = valor.toStringAsFixed(2); 
        print('\nProdutos com o desconto:\n');
        print(elementosR.join(', '));
      }
    }
  }

  if (!encontrouR) {
    print('\nNão há produtos que atendam aos requisitos');
  }
}

void main() {
  print('Digite o desconto desejado em decimal: ');
  double desc = double.parse(stdin.readLineSync()!);
  print('Digite o valor mínimo: ');
  double valor1 = double.parse(stdin.readLineSync()!);
  print('Digite o valor máximo: ');
  double valor2 = double.parse(stdin.readLineSync()!);
  procura(desc, valor1, valor2);
}
