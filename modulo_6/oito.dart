import 'dart:io';

void main() {
  List<String> nomes = [];
  List<double> medias = [];
  double media = 0;
  
  for (int i = 1; i <= 7; i++) {
    stdout.write("Digite o nome do aluno $i: ");
    String nome = stdin.readLineSync()!;
    nomes.add(nome);

    stdout.write("Digite a média do aluno $i: ");
    media = double.parse(stdin.readLineSync()!);
    medias.add(media);
  }

  
  double maiorM = medias[0];
  String? maiorN;

  for (int i = 1; i < medias.length; i++) {
    if (medias[i] > maiorM) {
      maiorM = medias[i];
      maiorN = nomes[i];
    }
    if(medias[i] < 7){

        print("Aluno: ${nomes[i]} -- precisa de ${7 - medias[i]}");
      }
  }

  print("O aluno com a maior média é: $maiorN com média $maiorM");
}