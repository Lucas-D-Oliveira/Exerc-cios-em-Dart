import 'dart:io';

Future<void> procura(String letra) async {
  final arquivo = File('produtos.dat');
  final conteudoR = await arquivo.readAsString();
   
  final linhasR = conteudoR.split('\n');
  bool encontrouR = false;

  for (var linhaR in linhasR.skip(1)) {
    final elementosR = linhaR.split(', ');
    if (elementosR.isNotEmpty && elementosR.length > 1) {
      String descricao = elementosR[1].trim();
      if (descricao.startsWith(letra)) {
        encontrouR = true;
        print("$linhaR");
      }
    }
  }

  if (!encontrouR) {
    print("Não há produtos começados em $letra");
  }
}

void main() {
  procura('m');
}
