import 'dart:io';

void adiciona(String conteudo, String Arquivo) {
  final arquivo = File(Arquivo);

  final acessoArquivo = arquivo.openSync(mode: FileMode.append);
  acessoArquivo.writeStringSync(conteudo);
  acessoArquivo.closeSync();
}

Future<bool> verifica(String proc, String Arquivo) async {
  try {
    final arquivo = File(Arquivo);
    final conteudoArquivo = await arquivo.readAsString();

    return conteudoArquivo.contains(proc);
  } catch (e) {
    print("Erro: $e");
    return false;
  }
}

Future<void> main() async {
  print('Digite o código do cliente: ');
  String cod = stdin.readLineSync()!;
  String arquivo1 = "clientes.txt"; 
   String arquivo2 = "recebimentos.txt";

  Future<bool> result = verifica(cod, arquivo1);

  if (await result) {
    String nTexto = "\n111, 150, 02/05/23, 30/07/23, 02";
    adiciona(nTexto, arquivo2);
  }
  else{
    print("Cliente não cadastrado.");
  }
}
