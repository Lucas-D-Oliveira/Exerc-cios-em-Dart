import 'dart:io';

Future<void> main() async {
  String acessArq = "produtos.dat";

  final conteudoArq = await File(acessArq).readAsString();
  final linhasprodutos = conteudoArq.split('\n');

  final novasLinhas = linhasprodutos.skip(1).map((linha) {
    final elementos = linha.split(', ');
    if (elementos.length >= 3) {
      String precoString = elementos[2].trim();
      if (precoString.isNotEmpty) {
        try {
          double valor = double.parse(precoString);
          if(valor > 100){
          valor += 10;
          elementos[2] = valor.toString();}
        } catch (e) {
        }
      }
    }
    return elementos.join(', ');
  }).toList();

  final novoConteudo = 'Código, Descrição, Preço\n${novasLinhas.join('\n')}';
  final resuArq = File('produtos.dat');

  await resuArq.writeAsString(novoConteudo);

  final novoArq = File('produtos.dat');
  final conteudonovo = await novoArq.readAsString();
  print("Arquivo atualizado:\n$conteudonovo");
}
