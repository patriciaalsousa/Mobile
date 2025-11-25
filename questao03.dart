import 'dart:io';

void main() {
  print('--- Questão 03: Divisores de um número ---');

  stdout.write('Digite um número inteiro: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    int numero = int.parse(input);
    List<int> divisores = [];

    for (int i = 1; i <= numero; i++) {
      if (numero % i == 0) {
        divisores.add(i);
      }
    }

    print('Os divisores de $numero são: $divisores');
  }
}