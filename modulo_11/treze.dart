import 'dart:io';

void adiciona(String conteudo, File arquivo) {
  RandomAccessFile acessoArquivo = arquivo.openSync(mode: FileMode.append);
  acessoArquivo.writeStringSync('\n $conteudo');
  acessoArquivo.closeSync();
}

bool verifica(String codigo, String arquivo) {
  final linhas = File(arquivo).readAsLinesSync();
  for (var linha in linhas) {
    if (linha.contains(codigo)) {
      return true;
    }
  }
  return false;
}

Future<void> procura(String est,  arquivoR) async {
  
  final conteudoR = await (arquivoR).readAsString();
   
    final linhasR = conteudoR.split('\n');
    bool encontrouR = false;

    

    for (var linhaR in linhasR.skip(1)) {
      final elementosR = linhaR.split(', '); 
      
      
      if (elementosR.isNotEmpty && elementosR[3] == est) {
  encontrouR = true;
  print("Roupas da estação: $linhaR \n");
}

    }

    if (!encontrouR) {
      print("Não há roupas desta estação");
    }
}


Future<void> main() async {
  final arquivo1 = File('estilista.txt');
  final arquivo2 = File('estacao.txt');
  final arquivo3 = File('roupa.txt');

  print('Oque deseja cadastrar? (1)Estilista - (2)Estação - (3)Roupa - (4)Consulta de roupas da estação');
  int ind = int.parse(stdin.readLineSync()!);

  switch(ind){

  case 1:
  print('Cadastro de estilista (utilize o mesmo padrão): código, nome, salário');
  String elTexto = stdin.readLineSync()!;
 
  adiciona(elTexto, arquivo1);
  break;

  case 2:
  print('Cadastro de estações (utilize o mesmo padrão): código, nome');
  String eTexto = stdin.readLineSync()!;
  
  adiciona(eTexto, arquivo2);
  break;

  case 3:
  print('Cadastro de roupas (utilize o mesmo padrão): código, descrição, código do estilista, código da estação, ano');
  String rTexto = stdin.readLineSync()!;

  String arquivoE = "estacao.txt";
  String arquivoEL = "estilista.txt";

  if (verifica(rTexto.split(',')[3], arquivoE) && verifica(rTexto.split(',')[2], arquivoEL)) {
    
    adiciona(rTexto, arquivo3);
  } else {
    print('Estilista ou estação não encontrados');
  }
  break;

  case 4:
print("Estações cadastradas:\n"); 
   final conteudoE = await arquivo2.readAsString();

    final linhasE = conteudoE.split('\n');
   
    for (var linhaE in linhasE.skip(1)) {
      final elementosE = linhaE.split(', '); 
  
      if (elementosE.isNotEmpty) {
  print("$linhaE \n");
}
}
print('\nDigite o código da estação que deseja consultar');
  String est = stdin.readLineSync()!;

  procura(est, arquivo3);
}
}
