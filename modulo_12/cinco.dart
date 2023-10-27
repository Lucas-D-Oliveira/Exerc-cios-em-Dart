import 'dart:io';

class Funcionario {
  late int _numeroFuncionario;
  late String _nomeFuncionario;
  late String _cargo;
  late double _salario;

  Funcionario(this._numeroFuncionario, this._nomeFuncionario, this._cargo,
      this._salario);

  int get numeroFuncionarioN {
    return _numeroFuncionario;
  }

  set numeroFuncionario (int numeroFuncionarioN){
      _numeroFuncionario = numeroFuncionarioN;
  }

  String get nomeFuncionarioN {
    return _nomeFuncionario;
  }

  set nomeFuncionario (String nomeFuncionarioN){
    _nomeFuncionario = nomeFuncionarioN;
  }

  String get cargoN {
    return _cargo;
  }

  set cargo (String cargoN){
    _cargo = cargoN;
  }

  double get salarioN {
    return _salario;
  }

  set salario (double salarioN){
    _salario = salarioN;
  }
}

class Dependente {
  late Funcionario _depeFuncionario;
  late String _dependente;

  Dependente(this._depeFuncionario, this._dependente);

  Funcionario get depeFuncionarioN {
    return _depeFuncionario;
  }

  set depeFuncionario (Funcionario depeFuncionarioN){
    _depeFuncionario = depeFuncionarioN;
  }

  String get dependenteN {
    return _dependente;
  }

  set dependente (String dependenteN){
    _dependente = dependenteN;
  }
}

void main() {
  int sair = 0;
  List<Funcionario> func = [];
  List<Dependente> depe = [];
  while (sair != 5) {
    print('Oque deseja fazer?: (1)Cadastrar funcionario -- (2)Mostrar bonus mensal -- (3)ExCluir Funcionário -- (4)Alterar salário do funcionario -- (5)Sair');
    int esc = int.parse(stdin.readLineSync()!);
    switch (esc) {
      case 1:
        print('Digite o numero do funcionario: ');
        int num = int.parse(stdin.readLineSync()!);

        bool funcExiste =
            func.any((Funcionario) => Funcionario.numeroFuncionarioN == num);

        if (funcExiste) {
          print('Funcionario já cadastrado');
        }
        else{
          print('Digite o nome do funcionario: ');
          String nome = stdin.readLineSync()!;

          print('Digite o cargo do funcionario: ');
          String cargo = stdin.readLineSync()!;

          print('Digite o salário do funcionario: ');
          double sal = double.parse(stdin.readLineSync()!);

          func.add(Funcionario(num, nome, cargo, sal));

          print("Digite o número de dependentes: ");
          int quant = int.parse(stdin.readLineSync()!);

          for (int i = 0; i < quant; i++) {
            print('Digite o nome do dependente ${i + 1}: '); String depend = stdin.readLineSync()!;
            Funcionario funcN = func.firstWhere((Funcionario) => Funcionario.nomeFuncionarioN == nome);

            depe.add(Dependente(funcN, depend));
          }
        }
        break;
      case 2:
        int cont = 0;
        double salarioF = 0;
        print('Digite o nome do funcionario: ');
        String nome = stdin.readLineSync()!;

        for (var dependente in depe) {
          if (nome == dependente.depeFuncionarioN.nomeFuncionarioN) {
            cont += 1;
          }
        }

        for (var funcionario in func) {
          if (nome == funcionario.nomeFuncionarioN) {
            salarioF = funcionario.salarioN;
          }
        }
        salarioF = salarioF * (cont * 0.02);
        print('Funcionario $nome -- Número de dependentes: $cont -- Bonus mensal: $salarioF');
        break;

       
  
case 3:
  late String delete;
  print('Digite o numero do funcionario: ');
  int num = int.parse(stdin.readLineSync()!);

  bool funcionarioE = false;

  for (var funcionario in func) {
    if (num == funcionario.numeroFuncionarioN) {
      delete = funcionario.nomeFuncionarioN;
      funcionarioE = true;
      break; 
    }
  }

  if (funcionarioE) {
    func.removeWhere((funcionario) => funcionario.nomeFuncionarioN == delete);
    depe.removeWhere((dependente) => dependente.depeFuncionarioN.nomeFuncionarioN == delete);
    print('Funcionário e seus dependentes removidos');
  } else {
    print('Funcionário não cadastrado');
  }
  break;


      case 4: 

       print('Digite o numero do funcionario: ');
  int num = int.parse(stdin.readLineSync()!);

  bool funcionarioE = false;

  for (var funcionario in func) {
    if (num == funcionario.numeroFuncionarioN) {
      funcionarioE = true;
      break; 
    }
  }

  if (funcionarioE) {
    print("Digite o novo valor do salário do funcionario: "); double novoSal = double.parse(stdin.readLineSync()!);

    for (var funcionario in func) {
    if (num == funcionario.numeroFuncionarioN) {
      funcionario.salario = novoSal;
      break; 
    }
  }
  } else {
    print('Funcionário não cadastrado');
  }
  break;
        
        case 5:
        sair = 5;
        break;
    }
  }
}
