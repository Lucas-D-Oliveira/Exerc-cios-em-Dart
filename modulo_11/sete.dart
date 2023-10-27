import 'dart:io';
import 'package:intl/intl.dart';

Future<void> main() async {
  // Passo 1: Solicitar a data do usuário
  print('Digite a data no formato DD/MM/AA: ');
  String dataDesejadaStr = stdin.readLineSync()!;
  final DateFormat dateFormat = DateFormat('dd/MM/yy');
  final DateTime dataDesejada = dateFormat.parse(dataDesejadaStr);

  // Passo 2: Analisar os arquivos e criar estruturas de dados
  final arquivoRecebimentos = File('recebimentos.txt');
  final arquivoClientes = File('clientes.txt');

  final linhasRecebimentos = await arquivoRecebimentos.readAsLines();
  final linhasClientes = await arquivoClientes.readAsLines();

  // Criar um mapa de clientes para associar o código do cliente ao nome
  Map<String, String> mapaClientes = {};

  for (var linhaCliente in linhasClientes.skip(1)) {
    final elementosCliente = linhaCliente.split(', ');
    if (elementosCliente.length >= 2) {
      mapaClientes[elementosCliente[0]] = elementosCliente[1];
    }
  }

  // Passo 3: Comparar datas de vencimento e calcular os dias de atraso
  for (var linhaRecebimento in linhasRecebimentos.skip(1)) {
    final elementosRecebimento = linhaRecebimento.split(', ');

    if (elementosRecebimento.length >= 5) {
      final dataVencimentoStr = elementosRecebimento[3];
      final DateTime dataVencimento = dateFormat.parse(dataVencimentoStr);

      if (dataDesejada.isAfter(dataVencimento) || dataDesejada.isAtSameMomentAs(dataVencimento)) {
        final diasAtraso = dataDesejada.difference(dataVencimento).inDays;
        final codigoCliente = elementosRecebimento[4];

        final nomeCliente = mapaClientes[codigoCliente] ?? 'Desconhecido';
        print('Recebimento: Cliente $nomeCliente, Dias de Atraso: $diasAtraso');
      }
    }
  }
}
