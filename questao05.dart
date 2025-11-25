void main() {
  print('--- Questão 05: Números Pares ---');

  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> pares = [];

  for (var numero in a) {
    if (numero % 2 == 0) {
      pares.add(numero);
    }
  }

  print('Lista original: $a');
  print('Lista apenas pares: $pares');
}