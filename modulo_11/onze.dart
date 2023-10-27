import 'dart:io';

Future<void> main() async {
  print('Digite o 1º valor : ');
  double proc = double.parse(stdin.readLineSync()!);
  print('Digite o 2º valor : ');
  double proc2 = double.parse(stdin.readLineSync()!);

  
  String arquivoRecebimentos = "recebimentos.txt";

  
  final conteudoRecebimentos = await File(arquivoRecebimentos).readAsString();

  
    final linhasRecebimentos = conteudoRecebimentos.split('\n');
    bool encontrouRecibos = false;

    for (var linhaRecebimento in linhasRecebimentos.skip(1)) {
      final elementosRecebimento = linhaRecebimento.split(', '); 
      double valor = double.parse(elementosRecebimento[1]);
      
      if (elementosRecebimento.isNotEmpty && valor > proc && valor < proc2) {
        encontrouRecibos = true;
        print("Recibos entre os valores: $linhaRecebimento");
      }
    }

    if (!encontrouRecibos) {
      print("Não há recibos entre os valores");
    }
}
