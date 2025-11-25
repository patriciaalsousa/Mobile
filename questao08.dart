import 'dart:io';

void main() {
  print('--- Questão 08: Conversando com Bob ---');
  print('(Digite algo para falar com Bob)');

  String? input = stdin.readLineSync();
  
  String frase = input?.trim() ?? "";

  bool ehGrito = frase.isNotEmpty && 
                 frase == frase.toUpperCase() && 
                 RegExp(r'[A-Z]').hasMatch(frase);
  
  bool ehPergunta = frase.endsWith('?');
  bool ehVazio = frase.isEmpty;

  String resposta;

  if (ehGrito && ehPergunta) {
    resposta = 'Calma, eu sei o que estou fazendo!';
  } else if (ehGrito) {
    resposta = 'Uau, relaxe!';
  } else if (ehPergunta) {
    resposta = 'Ok.';
  } else if (ehVazio) {
    resposta = 'Tudo bem. Seja desse jeito!';
  } else {
    resposta = 'Tanto faz.';
  }

  print('Bob: $resposta');
}