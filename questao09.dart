import 'dart:io';

void main() {
  print('--- Questão 09: Pontuação Scrabble ---');

  stdout.write('Digite uma palavra: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    String palavra = input.toUpperCase();
    int pontuacaoTotal = 0;

    Map<String, int> tabela = {
      'A': 1, 'E': 1, 'I': 1, 'O': 1, 'U': 1, 'L': 1, 'N': 1, 'R': 1, 'S': 1, 'T': 1,
      'D': 2, 'G': 2,
      'B': 3, 'C': 3, 'M': 3, 'P': 3,
      'F': 4, 'H': 4, 'V': 4, 'W': 4, 'Y': 4,
      'K': 5,
      'J': 8, 'X': 8,
      'Q': 10, 'Z': 10
    };

    for (int i = 0; i < palavra.length; i++) {
      String letra = palavra[i];
      pontuacaoTotal += tabela[letra] ?? 0;
    }

    print('Palavra: $input');
    print('Pontuação: $pontuacaoTotal');
  }
}