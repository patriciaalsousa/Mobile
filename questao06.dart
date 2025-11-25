import 'dart:io';
import 'dart:math';

void main() {
  print('--- Questão 06: Pedra, Papel e Tesoura ---');

  List<String> opcoes = ['Pedra', 'Papel', 'Tesoura'];

  stdout.write('Escolha sua jogada (Pedra, Papel, Tesoura): ');
  String? escolhaUsuario = stdin.readLineSync();

  if (escolhaUsuario != null) {
    if (escolhaUsuario.isNotEmpty) {
        escolhaUsuario = escolhaUsuario[0].toUpperCase() + escolhaUsuario.substring(1).toLowerCase();
    }

    if (!opcoes.contains(escolhaUsuario)) {
      print('Opção inválida! Tente novamente.');
      return;
    }

    Random random = Random();
    String escolhaComputador = opcoes[random.nextInt(3)];

    print('\nVocê escolheu: $escolhaUsuario');
    print('Computador escolheu: $escolhaComputador');

    if (escolhaUsuario == escolhaComputador) {
      print('Resultado: EMPATE!');
    } else if ((escolhaUsuario == 'Pedra' && escolhaComputador == 'Tesoura') ||
        (escolhaUsuario == 'Tesoura' && escolhaComputador == 'Papel') ||
        (escolhaUsuario == 'Papel' && escolhaComputador == 'Pedra')) {
      print('Resultado: VOCÊ VENCEU!');
    } else {
      print('Resultado: COMPUTADOR VENCEU!');
    }
  }
}