import 'dart:io';

class Aluno {
  late int codigo;
  late String nome;

  Aluno(this.codigo, this.nome);
}

class Disciplina {
  late int codigoD;
  late String nomeD;
  late double cargaHora;

  Disciplina(this.codigoD, this.nomeD, this.cargaHora);
}

class DisciplinaPratica extends Disciplina {
  late double cargaHoraP;

  DisciplinaPratica(int codigoD, String nomeD, double cargaHora,
      [double cargaHoraP = 0])
      : super(codigoD, nomeD, cargaHora) {
    this.cargaHoraP = cargaHoraP;
  }
}

class Matricula {
  late int anoLetivo;
  late int serie;
  late Aluno aluno;
  late Disciplina disciplina;
  late double nBim1;
  late double nBim2;
  late double nBim3;
  late double nBim4;

  Matricula(
    this.anoLetivo,
    this.serie,
    this.aluno,
    this.disciplina,
  ) {
    this.nBim1 = 0;
    this.nBim2 = 0;
    this.nBim3 = 0;
    this.nBim4 = 0;
  }
  
}

void main() {
  int sair = 0;
  bool roda = true;
  List<Disciplina> dis = [];
  List<Aluno> al = [];
  List<Matricula> mat = [];
  
  while (sair != 6 ) {
    print(
        'Oque deseja fazer?: (1)Cadastrar disciplina -- (2)Cadastrar aluno -- (3)Matricular aluno -- (4)Cadastrar notas -- (5)Mostrar boletinho -- (6)Fim do programa');
    int esc = int.parse(stdin.readLineSync()!);

    switch (esc) {
      case 1:
        print('Digite o código da disciplina: ');
        int cod = int.parse(stdin.readLineSync()!);
        print('Digite o nome da disciplina: ');
        String name = stdin.readLineSync()!;
        print('Digite a carga horaria da disciplina: ');
        double hG = double.parse(stdin.readLineSync()!);

        print('Essa disciplina possui parte pratica?: s ou n ');
        String r = stdin.readLineSync()!;
        if (r == 's' || r == 'S') {
          print('Digite a carga horaria pratica da disciplina: ');
          double hP = double.parse(stdin.readLineSync()!);
          dis.add(DisciplinaPratica(cod, name, hG, hP));
        } else {
          dis.add(Disciplina(cod, name, hG));
        }
        break;

      case 2:
        while (roda) {
          print('Digite o código do aluno');
          int codA = int.parse(stdin.readLineSync()!);

          bool alE = al.any((Aluno) => Aluno.codigo == codA);
          if (alE) {
            print('Código de aluno já existente.');
            break;
          } else {
            print('Digite o nome do aluno');
            String name = stdin.readLineSync()!;
            al.add(Aluno(codA, name));
            break;
          }
        }
        break;

      case 3:
        print('Digite o código do aluno:\n ');
        int alunocod = int.parse(stdin.readLineSync()!);

        bool codAexiste = al.any((Aluno) => Aluno.codigo == alunocod);

        if (codAexiste) {
          Aluno alunoE = al.firstWhere((Aluno) => Aluno.codigo == alunocod);

          print('Digite o código da disciplina:\n  ');
          int discod = int.parse(stdin.readLineSync()!);

          bool codMexiste =
              dis.any((Disciplina) => Disciplina.codigoD == discod);

          if (codMexiste) {
            Disciplina disciplinaE =
                dis.firstWhere((Disciplina) => Disciplina.codigoD == discod);

            print('Informe o ano letivo');
            int anoL = int.parse(stdin.readLineSync()!);

            bool matriF = mat.any((Matricula) =>
                Matricula.aluno == alunoE &&
                Matricula.disciplina == disciplinaE &&
                Matricula.anoLetivo == anoL);
            if (matriF) {
              print('Matricula já existe no sistema');
              break;
            } else {
              print("Digite a serie do aluno");
              int seri = int.parse(stdin.readLineSync()!);
              mat.add(Matricula(anoL, seri, alunoE, disciplinaE));
              print('\n ${mat[0].nBim1}');
            }
          } else {
            print('Disciplina não cadastrada');
          }
        } else {
          print('Aluno não cadastrado');
        }
        break;

        case 4:
        while(roda){
          print('Digite o código do aluno:\n ');
        int alunocod = int.parse(stdin.readLineSync()!);

        Aluno alunoE = al.firstWhere((Aluno) => Aluno.codigo == alunocod);

         print('Digite o código da disciplina:\n  ');
          int discod = int.parse(stdin.readLineSync()!);

          Disciplina disciplinaE = dis.firstWhere((Disciplina) => Disciplina.codigoD == discod);

          print('Informe o ano letivo');
            int anoL = int.parse(stdin.readLineSync()!);

            print("Digite a serie do aluno");
              int seri = int.parse(stdin.readLineSync()!);

              bool matriE = mat.any((Matricula) =>
                Matricula.aluno == alunoE &&
                Matricula.disciplina == disciplinaE &&
                Matricula.anoLetivo == anoL &&
                Matricula.serie == seri);

                if(matriE){
                  print('Informe a nota do primeiro Bim: '); double bin1 = double.parse(stdin.readLineSync()!);

                  print('Informe a nota do segundo Bim: '); double bin2 = double.parse(stdin.readLineSync()!);

                  print('Informe a nota do terceiro Bim: '); double bin3 = double.parse(stdin.readLineSync()!);

                  print('Informe a nota do quarto Bim: '); double bin4 = double.parse(stdin.readLineSync()!);

                  int ind = mat.indexWhere((Matricula) => 
                Matricula.aluno == alunoE &&
                Matricula.disciplina == disciplinaE &&
                Matricula.anoLetivo == anoL &&
                Matricula.serie == seri);

                  mat[ind].nBim1 = bin1; mat[ind].nBim2 = bin2; mat[ind].nBim3 = bin3; mat[ind].nBim4 = bin4;
                  
                }
                else{
                  print('Matricula não encontrada');
                  break;
                }
                break;

        }
          break;
        case 5:
  bool cabecalho = true;
  print('Digite o código do aluno:\n');
  int alunocod = int.parse(stdin.readLineSync()!);

  print('Informe o ano letivo');
  int anoL = int.parse(stdin.readLineSync()!);

  bool matriculasEncontradas = mat.where((matricula) =>
      matricula.aluno.codigo == alunocod &&
      matricula.anoLetivo == anoL).isNotEmpty;

  if (matriculasEncontradas) {
    print('Detalhes das matrículas:');
    for (var matricula in mat.where((matricula) =>
        matricula.aluno.codigo == alunocod &&
        matricula.anoLetivo == anoL)) {

      double med = (matricula.nBim1 + matricula.nBim2 + matricula.nBim3 + matricula.nBim4) / 4;
      if (cabecalho) {
        print('Aluno: ${matricula.aluno.nome}');
        print('Série: ${matricula.serie}');
        cabecalho = false;
      }

      print('Disciplina: ${matricula.disciplina.nomeD}');

      if (matricula.disciplina is DisciplinaPratica) {
        DisciplinaPratica disciplinaPratica = matricula.disciplina as DisciplinaPratica;
        print('Carga horária: ${disciplinaPratica.cargaHora} horas');
        print('Carga horária prática: ${disciplinaPratica.cargaHoraP} horas');
      } else {
        print('Carga horária: ${matricula.disciplina.cargaHora} horas');
      }

      print('Notas:');
      print('1º Bimestre: ${matricula.nBim1}');
      print('2º Bimestre: ${matricula.nBim2}');
      print('3º Bimestre: ${matricula.nBim3}');
      print('4º Bimestre: ${matricula.nBim4}');
      print('Média do aluno: $med');
      print('-----');
    }
  } else {
    print('Nenhuma matrícula encontrada');
  }
  break;


  case 6:
  sair = 6;
  break;
    }
  }
}
