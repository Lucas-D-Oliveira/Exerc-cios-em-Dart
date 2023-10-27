import 'dart:io';

class Produto {
  late int numero;
  late double preco;

  double desconto(double precoD) {
    if (precoD > 100) {
      precoD -= precoD * 0.15;
      
    } else {
      precoD -= precoD * 0.05;
      }
      return precoD;
  }
  
  
}

class Cliente {
  late int numeroC;
  late String nome;
  late String sexo;
  
  double descontoF(double precoDe) {
      double descF = precoDe;
      descF -= (descF * 0.05);
      return descF;
  }
}

class Comprar extends Cliente {
  late int quantidade;
  late double valorT;
  late int clienteCod = this.numeroC;
  late int produtoCod;

  
  
 

  void calcVT(List<Cliente> clienteComp, double vT, int codCp ) {
    int quant = this.quantidade;
    double vF = 0;
   late Cliente clienteE;
   
   

   for (Cliente cliente in clienteComp) {
    if (cliente.numeroC == this.clienteCod) {
      clienteE = cliente;
      break;
    }
  }

 if (clienteE.sexo == 'M' || clienteE.sexo == 'm') {
    vT = descontoF(vT);
  }

  vF = vT * quant;
    
    
    print('Clinte $clienteCod - Código do produto $codCp -- Quantidade comprada $quantidade -- total a pagar: $vF');
  }
}

void main(){
  Produto a = Produto(); Produto b = Produto(); Produto c = Produto();
  List<Produto> produts = [a, b, c];
  bool roda = true;

  for(int i = 0; i < produts.length; i ++){
    print('Digite o código do produto: '); int cod = int.parse(stdin.readLineSync()!);
    produts[i].numero = cod;

    while(roda){
       print('Digite o preço do produto: '); double valor = double.parse(stdin.readLineSync()!);
    if( valor > 20 && valor <350){
      double valorD = produts[i].desconto(valor);
      produts[i].preco = valorD;
      break;
    }
    }
  }
    
    Cliente p1 = Cliente(); Cliente p2 = Cliente(); Cliente p3 = Cliente();
    List<Cliente> pess = [p1, p2, p3];
    roda = true;
    for(int i = 0; i < pess.length; i++){
    print('Digite o código do cliente: '); int codC = int.parse(stdin.readLineSync()!);
     pess[i].numeroC = codC;

     print('Digite o nome do cliente: '); String name = stdin.readLineSync()!;
      pess[i].nome = name;

      
      while(roda){
        print('Digite o sexo do cliente: '); String se = stdin.readLineSync()!;
        if(se == 'm' || se == 'M' || se == 'h' || se == 'H'){
          pess[i].sexo = se;
          break;
        }
      }
  }
    

  Comprar comp1 = Comprar();
  produts.forEach((element) { 
      print('Produtos disponiveis');
      print(element.numero);
    });

        print('Digite seu código: '); int codC = int.parse(stdin.readLineSync()!);
        comp1.clienteCod = codC;

        print('Digite o código do produto: '); int codP = int.parse(stdin.readLineSync()!);
        comp1.produtoCod = codP;

        print('Digite a quantidade desejada: '); int qt = int.parse(stdin.readLineSync()!);
        comp1.quantidade = qt;

      double valorP = 0;
        for (Produto produto in produts) {
    if (produto.numero == codP) {
      valorP = produto.preco;
      break;
    }
  }
        

        comp1.calcVT(pess, valorP, codP);
        
        

      
}

