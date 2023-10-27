import 'dart:io';

void main() {
  // Duas listas de exemplo
 final String clientes = 'cod_cli, nome, endereco';
final String recebimentos = 'num_doc, valor_doc, data_emissao, data_vencimento, cod_cli';


  // Especifique o nome e caminho do arquivo desejado
  final arquivo1 = File('clientes.txt');

  // Escreve a string no arquivo
  arquivo1.writeAsStringSync(clientes);

  // Especifique o nome e caminho do arquivo desejado
  final arquivo2 = File('recebimentos.txt');

  // Escreve a string no arquivo
  arquivo2.writeAsStringSync(recebimentos);

  
}
