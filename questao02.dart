void main() {
  print('--- Questão 02: Elementos menores que 5 ---');

  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  
  print('Lista original: $a');
  print('Elementos menores que 5:');

  for (var numero in a) {
    if (numero < 5) {
      print(numero);
    }
  }
}