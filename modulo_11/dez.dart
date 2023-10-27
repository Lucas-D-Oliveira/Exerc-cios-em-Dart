import 'dart:io';

Future<void> main() async {
  print('Digite o valor : ');
  double proc = double.parse(stdin.readLineSync()!);

  
  String arquivoRecebimentos = "recebimentos.txt";

  
  final conteudoRecebimentos = await File(arquivoRecebimentos).readAsString();

  
    final linhasRecebimentos = conteudoRecebimentos.split('\n');
    bool encontrouRecibos = false;

    for (var linhaRecebimento in linhasRecebimentos.skip(1)) {
      final elementosRecebimento = linhaRecebimento.split(', '); 
      double valor = double.parse(elementosRecebimento[1]);
      
      if (elementosRecebimento.isNotEmpty && valor < proc) {
        encontrouRecibos = true;
        print("Recibos abaixo do valor: $linhaRecebimento \n");
      }
    }

    if (!encontrouRecibos) {
      print("Não há recibos abaixo do valor");
    }
}
