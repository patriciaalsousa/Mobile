void main() {
  print('--- Questão 04: Interseção de Listas (Lógica Manual) ---');

  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List<int> comuns = [];

  for (var numero in a) {
    if (b.contains(numero) && !comuns.contains(numero)) {
      comuns.add(numero);
    }
  }

  print('Lista A: $a');
  print('Lista B: $b');
  print('Elementos comuns: $comuns');
}