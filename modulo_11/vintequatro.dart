import 'dart:io';

Future<void> remover(String linha) async {
  final arquivo = File('produtos.dat');
  final linhas = await arquivo.readAsLines();
  final novasLinhas = linhas.where((l) => l != linha).toList();

  final novoConteudo = novasLinhas.join('\n');
  await arquivo.writeAsString(novoConteudo);
}

Future<void> procura(double valor) async {
  final arquivo = File('produtos.dat');
  final conteudoR = await arquivo.readAsString();
  final linhasR = conteudoR.split('\n');
  bool encontrouR = false;

  for (var linhaR in linhasR.skip(1)) {
    final elementosR = linhaR.split(', ');
    if (elementosR.isNotEmpty && elementosR.length > 0) {
      final valorProduto = double.tryParse(elementosR.last.trim());
      if (valorProduto != null && valorProduto > valor) {
        encontrouR = true;
        print("Produtos a serem removidos:\n$linhaR");
        await remover(linhaR);
        print('Produto removido.\n');
      }
    }
  }

  if (!encontrouR) {
    print('\nNão há produtos com preços acima de $valor');
  }
}

void main() {
  procura(200);
}
