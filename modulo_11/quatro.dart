import 'dart:io';

Future<void> remover(String delete, String arquivo1, arquivo2) async {
  try {
    final arquivoDe = File(arquivo2);
    final arquivoC = File(arquivo1);

    final linhas2 = await arquivoDe.readAsLines();
    final linhas1 = await arquivoC.readAsLines();

    bool encontrou1 = false;
    bool encontrou2 = false;
    final linhasAtu1 = <String>[];
    final linhasAtu2 = <String>[];


    for (var linha in linhas2) {
      if (linha.contains(delete)) {
        encontrou2 = true;
        continue; 
      }
      linhasAtu2.add(linha);
    }

     for (var linha in linhas1) {
      if (linha.contains(delete)) {
        encontrou1 = true;
        continue; 
      }
      linhasAtu1.add(linha);
    }

if (encontrou1 && encontrou2) {
      final conteudoAtualizado2 = linhasAtu2.join('\n');
      final conteudoAtualizado1 = linhasAtu1.join('\n');

      final acessoArquivo2 = arquivoDe.openSync(mode: FileMode.write);
      acessoArquivo2.writeStringSync(conteudoAtualizado2);
      acessoArquivo2.closeSync();

      final acessoArquivo1 = arquivoC.openSync(mode: FileMode.write);
      acessoArquivo1.writeStringSync(conteudoAtualizado1);
      acessoArquivo1.closeSync();

      
    } else {
      print("A string não foi encontrada nos arquivos.");
    }
  } catch (e) {
    print("Erro: $e");
  }
}

void main() {
  print('Digite o código do cliente que deseja excluir os dados: '); String cod = stdin.readLineSync()!; 
  String arquivo2 = "recebimentos.txt";
  String arquivo1 = "clientes.txt";

  remover(cod, arquivo1, arquivo2);
}
