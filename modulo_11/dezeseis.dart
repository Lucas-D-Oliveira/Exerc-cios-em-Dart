import 'dart:io';

void adiciona(String conteudo, File arquivo) {
  RandomAccessFile acessoArquivo = arquivo.openSync(mode: FileMode.append);
  acessoArquivo.writeStringSync('\n $conteudo');
  acessoArquivo.closeSync();
}

bool verifica(String num,) {
  final linhas = File('produtos.dat').readAsLinesSync();
  for(var numero in linhas){
      if(numero.contains(num)){
        return true;
      }
  }
  return false;
}



void main(){
  bool runAdd = true;
 while (runAdd) {
                
            final acessArq = File('produtos.dat');
            print('\nDigite as informações seguindo o padrão(Código, Descrição, Preço): ');
            String altArq = stdin.readLineSync()!;

            if(!verifica(altArq.split(',')[0])){
              adiciona(altArq, acessArq);
            runAdd = false;
            }
            else{
              print('\nCódigo de produto já cadastrado.');
            }
           
          
        }
}