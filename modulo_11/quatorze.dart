import 'dart:io';

void adiciona(String conteudo, File arquivo) {
  RandomAccessFile acessoArquivo = arquivo.openSync(mode: FileMode.append);
  acessoArquivo.writeStringSync('\n $conteudo');
  acessoArquivo.closeSync();
}

bool verifica(String num, String arquivo) {
  final linhas = File('$arquivo.txt').readAsLinesSync();
  for(var numero in linhas){
      if(numero.contains(num)){
        return true;
      }
  }
  return false;
}

double media(double nota1, double nota2){
  List notas =[]; notas.add(nota1); notas.add(nota2);
  double med = 0;
  double calc = 0;
  for(int i = 0; i < notas.length; i++){
    calc += notas[i];
  }
  med = calc / notas.length;
  return med;
}

Future<void> mostrar(String est, arquivoR) async {}

Future<void> main() async {
  bool run = true;
  List arqDisp = [];

  while (run) {
    print(
        'Oque deseja fazer (1)Criar arquivo - (2)Adicionar - (3)Mostrar - (4)Sair');
        try{
    int ind = int.parse(stdin.readLineSync()!);
      
    switch (ind) {
      case 1:
        print('Digite o nome do arquivo: ');
        String nomeArq = stdin.readLineSync()!;

        final String arq = 'Número, Nome, Nota1, Nota2';
        final arquivo = File('$nomeArq.txt');
        arquivo.writeAsStringSync(arq);
        arqDisp.add(nomeArq);
        break;

      case 2:
        bool runAdd = true;

        for (int i = 0; i < arqDisp.length; i++) {
          print("Arquivos disponíveis:");
          print('\n${arqDisp[i]}');
        }
        while (runAdd) {
          print('\nDigite o nome do arquivo que deseja acessar:');
          String acessNome = stdin.readLineSync()!;

          if (arqDisp.contains(acessNome)) {
            final acessArq = File('$acessNome.txt');
            print('\nDigite as informações seguindo o padrão(Número, Nome, Nota1, Nota2): ');
            String altArq = stdin.readLineSync()!;

            if(!verifica(altArq.split(',')[0], acessNome)){
              adiciona(altArq, acessArq);
            runAdd = false;
            }
            else{
              print('\nNúmero de aluno já cadastrado.');
            }
           
          } else {
            print('\nArquivo não encontrado, verefique o nome e tente novamente.');
          }
        }
        break;

      case 3:
      for (int i = 0; i < arqDisp.length; i++) {
          print("Arquivos disponíveis:");
          print('\n${arqDisp[i]}');
        }

      print('\nQual arquivo deseja visualizar?: '); String visuArq = stdin.readLineSync()!;
      
      final resuArq = File('$visuArq.txt');
      
      final conteudoarq = await resuArq.readAsString();
          final linhas = conteudoarq.split('\n');
   
    for (var linha in linhas.skip(1)) {
      final elementos = linha.split(', '); 
  
      if (elementos.isNotEmpty) {
  print("$linha > Média = ${media(double.parse(elementos[2]),double.parse(elementos[3]))} \n");
}
}
      break;
      case 4:
        run = false;
        break;

        default:
        print('Digite um número válido\n');
        break;
    }
  } catch (e) {
      print('Digite um número válido\n');
    }
}
}