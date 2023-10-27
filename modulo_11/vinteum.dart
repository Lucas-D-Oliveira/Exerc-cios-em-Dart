import 'dart:io';

Future<void> remover(int codigo) async {
  final arquivo = File('produtos.dat');
  final linhas = await arquivo.readAsLines();
  final novasLinhas = linhas.where((linha) {
    if (linha.isNotEmpty) {
      final elementos = linha.split(', ');
      if (elementos.isNotEmpty && elementos.length > 0) {
        final codigoProduto = int.tryParse(elementos[0].trim());
        return codigoProduto != codigo;
      }
    }
    return true;
  }).toList();

  final novoConteudo = novasLinhas.join('\n');
  await arquivo.writeAsString(novoConteudo);
}

Future<void> procura(int codigo) async {
  final arquivo = File('produtos.dat');
  final conteudoR = await arquivo.readAsString();
  final linhasR = conteudoR.split('\n');
  bool encontrouR = false;

  for (var linhaR in linhasR.skip(1)) {
    final elementosR = linhaR.split(', ');
    if (elementosR.isNotEmpty && elementosR.length > 0) {
      final codigoProduto = int.tryParse(elementosR[0].trim());
      if (codigoProduto == codigo) {
        encontrouR = true;
        print("$linhaR");
        remover(codigo);
        print('Produto removido.');
        break;
      }
    }
  }

  if (!encontrouR) {
    print('\nCódigo de produto não encontrado.');
  }
}

void main() {
  print('Digite o código do produto para excluir');String delete = stdin.readLineSync()!;
  int? codigo = int.tryParse(delete);
    procura(codigo!);
}
