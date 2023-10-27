import 'dart:io';

Future<void> Atualizar(String atu, String cod, String arquivo1) async {
  try {
  
    final arquivoC = File(arquivo1);

    
    final linhas1 = await arquivoC.readAsLines();

    bool encontrou1 = false;
  
    final linhasAtu1 = <String>[];
   

     for (var linha in linhas1) {
      if (linha.contains(cod)) {
        encontrou1 = true;
        continue; 
      }
      linhasAtu1.add(linha);
    }

if (encontrou1) {
      
      final conteudoAtualizado1 = linhasAtu1.join('\n');

      final acessoArquivo1 = arquivoC.openSync(mode: FileMode.write);
      acessoArquivo1.writeStringSync(conteudoAtualizado1);
      acessoArquivo1.writeStringSync(atu);
      acessoArquivo1.closeSync();

      
    } else {
      print("A string não foi encontrada nos arquivos.");
    }
  } catch (e) {
    print("Erro: $e");
  }
}

void main() {
  print('Digite o código do cliente que deseja atualizar os dados: '); String cod  = stdin.readLineSync()!;
  print('Digite o as alterações na ordem a seguir: codigo do cliente, nome, endereço. '); String atuTexto  = stdin.readLineSync()!;
  
  String arquivo1 = "clientes.txt";

  Atualizar(atuTexto, cod, arquivo1,);
}
