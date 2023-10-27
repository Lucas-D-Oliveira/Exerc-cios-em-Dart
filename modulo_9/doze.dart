import 'dart:io';

void main() {
  List<String> meses = [
    'janeiro', 'fevereiro', 'março', 'abril', 'maio', 'junho', 'julho',
    'agosto', 'setembro', 'outubro', 'novembro', 'dezembro'
  ];

  print("Digite uma data no formato DD/MM/AAAA: ");
  String data = stdin.readLineSync()!;

  if (vFormato(data)) {
    List<String> partes = data.split("/");
    int dia = int.tryParse(partes[0]) ?? 0;
    int mes = int.tryParse(partes[1]) ?? 0;
    int ano = int.tryParse(partes[2]) ?? 0;

    if (mes >= 1 && mes <= 12) {
      String nomeMes = meses[mes - 1];
      print("Data válida: $dia de $nomeMes de $ano");
    } else {
      print("Data inválida. O mês deve estar entre 1 e 12.");
    }
  } else {
    print("Data inválida. Certifique-se de que está no formato DD/MM/AAAA.");
  }
}

bool vFormato(String data) {
  RegExp regex = RegExp(r'^\d{2}/\d{2}/\d{4}$');
  return regex.hasMatch(data);
}
