

void main(){
double lucro = 0;
double quant = 94;
double ing = 5.5;


  for(double i = 0; i <= 8; i ++){
    ing = ing - 0.5;
    quant = quant + 26;
    lucro = ing * quant;
    print("Valor do ingreço: $ing, Quantidade de ingreços vendidos: $quant, Lucro total esperado: $lucro");
  }
}