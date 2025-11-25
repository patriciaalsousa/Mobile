import 'dart:io';

void main() {
  print('--- Questão 10: Transcrição DNA -> RNA ---');

  stdout.write('Digite a sequência de DNA (ex: GATTACA): ');
  String? input = stdin.readLineSync();

  if (input != null) {
    String dna = input.toUpperCase();
    String rna = "";

    for (int i = 0; i < dna.length; i++) {
      String nucleotideo = dna[i];

      switch (nucleotideo) {
        case 'G':
          rna += 'C';
          break;
        case 'C':
          rna += 'G';
          break;
        case 'T':
          rna += 'A';
          break;
        case 'A':
          rna += 'U';
          break;
        default:
          break;
      }
    }

    print('Fita DNA: $dna');
    print('Fita RNA: $rna');
  }
}