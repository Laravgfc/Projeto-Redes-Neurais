class Main {
  public static void main(String[] args) {
    //Váriaveis
    double p0 = 50,p1 = 4,erro = 0.0,soma = 0, taxAprend = 0.05;
    int num, iteracao, epoca = 18 ;
    //Época
    while(epoca!=0){
      epoca--;
      iteracao = 5;         // quantos vezes e numeros irá somar (ex. 1+1;2+2;3+3;4+4;5+5 = 5 iterações)
      num = 1;
      while(iteracao!=0){
      iteracao--;
      num++;
      soma = (p0*num) + (p1*num);
      erro = (num+num) - soma;
      p0 = p0 + (erro*taxAprend*num);
      p1 = p1 + (erro*taxAprend*num);
      }
    }

    System.out.println("Valor do erro: " + erro + "\nvalor p0: " + p0 + "\nvalor p1: " + p1 );
    num = 1;
    soma = 0;
    System.out.println();
    //Verificação
    while(num<=80){
      soma = (p0*num) + (p1*num);
      System.out.println(num + " + " + num + " = " + soma);
      num++;
    }
  }
}
