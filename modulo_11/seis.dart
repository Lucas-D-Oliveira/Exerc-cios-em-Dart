import 'dart:io';

Future<List<List<String>>?> criaMatriz(String arquivo1) async {
  try {
    final arquivoC = File(arquivo1);
    final linhas = await arquivoC.readAsLines();

    List<List<String>> matriz = [];

    for (var linha in linhas) {
      final elementos = linha.split(', ');
      matriz.add(elementos);
    }

    return matriz;

  } catch (e) {
    print("Erro: $e");
    return null;
  }
}

Future<void> main() async {
  String arquivo = 'recebimentos.txt';

  final matriz = await criaMatriz(arquivo);

  if (matriz == null) {
    print("Erro ao ler a matriz do arquivo.");
    return;
  }

  print('Digite o código do cliente: ');
  String cod = stdin.readLineSync()!;

  print('Digite o número do documento a ser alterado: ');
  String num = stdin.readLineSync()!;

  print("Digite o que deseja alterar: (1) Valor - (2) Data de emissão - (3) Data de vencimento (para datas utilizar o formato DD/MM/AA)");
  String atu = stdin.readLineSync()!;

  print('Digite a alteração a ser feita: ');
  String alt = stdin.readLineSync()!;

  bool alteracaoRealizada = false;

  switch (atu) {
    case '1':
      for (int i = 0; i < matriz.length; i++) {
        if (matriz[i][0] == num && matriz[i][4] == cod) {
          matriz[i][1] = alt;
          alteracaoRealizada = true;
        }
      }
      break;

    case '2':
      for (int i = 0; i < matriz.length; i++) {
        if (matriz[i][0] == num && matriz[i][4] == cod) {
          matriz[i][2] = alt;
          alteracaoRealizada = true;
        }
      }
      break;

    case '3':
      for (int i = 0; i < matriz.length; i++) {
        if (matriz[i][0] == num && matriz[i][4] == cod) {
          matriz[i][3] = alt;
          alteracaoRealizada = true;
        }
      }
      break;
  }

  if (alteracaoRealizada) {
    salvarMatriz(matriz, arquivo);
    print("Alterações salvas - matriz\n.");
  } else {
    print("Nenhuma alteração - matriz\n.");
  }
}

void salvarMatriz(List<List<String>> matriz, String arquivo1) {
  final arquivoC = File(arquivo1);
  final linhas = matriz.map((linha) => linha.join(', ')).join('\n');

  try {
    arquivoC.writeAsStringSync(linhas);
    print("Alterações salvas - arquivo\n.");
  } catch (e) {
    print("Erro - arquivo\n: $e");
  }
}
