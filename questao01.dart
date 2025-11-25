import 'dart:io';

void main() {
  print('--- Questão 01: Cadastro e Linha do Tempo ---');

  stdout.write('Digite seu nome: ');
  String? nome = stdin.readLineSync();

  stdout.write('Digite sua idade: ');
  String? inputIdade = stdin.readLineSync();
  
  if (nome != null && inputIdade != null) {
    int idade = int.parse(inputIdade);
    int anoAtual = DateTime.now().year;
    int anoNascimento = anoAtual - idade;

    print('\nOlá $nome, você tem $idade anos.');
    print('Você nasceu em $anoNascimento.\n');

    for (int ano = anoNascimento; ano <= anoAtual; ano++) {
      int idadeNaqueleAno = ano - anoNascimento;

      if (idadeNaqueleAno == 0) {
        print('No ano de $ano você nasceu!');
      } else if (idadeNaqueleAno == 1) {
        print('No ano de $ano você tinha 1 ano.');
      } else {
        String verbo = (ano == anoAtual) ? 'tem' : 'tinha';
        print('No ano de $ano você $verbo $idadeNaqueleAno anos.');
      }
    }

    int faltaPara100 = 100 - idade;
    print('\nFaltam $faltaPara100 anos para você completar 100 anos.');
  }
}