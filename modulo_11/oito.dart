import 'dart:io';

Future<void> main() async {
  print('Digite o código do cliente: ');
  String cod = stdin.readLineSync()!;

  String arquivoClientes = "clientes.txt";
  String arquivoRecebimentos = "recebimentos.txt";

  final conteudoClientes = await File(arquivoClientes).readAsString();
  final conteudoRecebimentos = await File(arquivoRecebimentos).readAsString();

  if (conteudoClientes.contains(cod)) {
    final linhasRecebimentos = conteudoRecebimentos.split('\n');
    bool encontrouRecibos = false;

    for (var linhaRecebimento in linhasRecebimentos) {
      final elementosRecebimento = linhaRecebimento.split(', '); 
      
      
      if (elementosRecebimento.isNotEmpty && elementosRecebimento.last == cod) {
        encontrouRecibos = true;
        print("Recibo do cliente: $linhaRecebimento");
      }
    }

    if (!encontrouRecibos) {
      print("Cliente não tem recibos cadastrados");
    }
  } else {
    print("Cliente não cadastrado.");
  }
}
