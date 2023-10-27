import 'dart:io';

Future<void> main() async {
  print('Digite o valor : ');
  double proc = double.parse(stdin.readLineSync()!);

  
  String acessArq = "produtos.dat";

  
  final conteudoArq = await File(acessArq).readAsString();

  
    final linhasprodutos = conteudoArq.split('\n');
    bool encontrouprod = false;

    for (var linhaprod in linhasprodutos.skip(1)) {
      final elementosProd = linhaprod.split(', '); 
      double valor = double.parse(elementosProd[1]);
      
      if (elementosProd.isNotEmpty && valor > proc) {
        encontrouprod = true;
        print("Descrição de produtos acima do valor: ${elementosProd[1]}");
      }
    }

    if (!encontrouprod) {
      print("Não há produtos acima do valor");
    }
}
