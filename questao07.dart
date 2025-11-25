void main() {
  print('--- Questão 07: Quadrado da Soma vs Soma dos Quadrados ---');

  int n = 10;
  int somaDosQuadrados = 0;
  int somaSimples = 0;

  for (int i = 1; i <= n; i++) {
    somaDosQuadrados += (i * i);
    somaSimples += i;
  }

  int quadradoDaSoma = somaSimples * somaSimples;
  int diferenca = quadradoDaSoma - somaDosQuadrados;

  print('Soma dos quadrados dos primeiros $n números: $somaDosQuadrados');
  print('Quadrado da soma dos primeiros $n números: $quadradoDaSoma');
  print('Diferença: $diferenca');
}