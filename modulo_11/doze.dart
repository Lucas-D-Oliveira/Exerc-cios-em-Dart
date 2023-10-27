import 'dart:io';

void main() {
  
final String estilista = 'Código do estilista, Nome do estilista, Sálario';
final String roupa = 'Código da roupa, Descrição da roupa, Código do estilista, Código da estação, Ano';
final String estacao = 'Código da estação, Nome da estação';


  
  final arquivo1 = File('estilista.txt');

  arquivo1.writeAsStringSync(estilista);

  
  final arquivo2 = File('roupa.txt');

  arquivo2.writeAsStringSync(roupa);


  final arquivo3 = File('estacao.txt');

  arquivo3.writeAsStringSync(estacao);
}
