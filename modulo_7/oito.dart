import 'dart:math';

void main() {
  List<List> matrize = List.generate(3, (_) => List.generate(8, (_) => null));
  List<List> matriza = List.generate(3, (_) => List.generate(8, (_) => null));
  List<List> matriz1 = List.generate(3, (_) => List.generate(8, (_) => Random().nextInt(12)));
  List<List> matriz2 = List.generate(3, (_) => List.generate(8, (_) => Random().nextInt(12)));
  

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 8; j++) {
      matrize[i][j] = matriz2[i][j] + matriz1[i][j];
      matriza[i][j] = matriz1[i][j] - matriz2[i][j];

    }
  }

 
    print('$matrize\n');


  print(matriza);
    
   

}

