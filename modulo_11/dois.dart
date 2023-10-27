import 'dart:io';

void adiciona(String conteudo) {
  // Especifique o nome e caminho do arquivo desejado
  final arquivo = File('clientes.txt');

  // Abre o arquivo em modo de escrita, permitindo a adição de novos elementos
  RandomAccessFile acessoArquivo = arquivo.openSync(mode: FileMode.append);

  // Escreve o novo conteúdo no arquivo
  acessoArquivo.writeStringSync(conteudo);

  // Fecha o arquivo após a escrita
  acessoArquivo.closeSync();
}

void main() {
  // Conteúdo a ser adicionado ao arquivo
  String nTexto = "\n02, Lucas , Ambrosia 92\n";

  // Adicione o novo conteúdo ao arquivo
  adiciona(nTexto);

}
