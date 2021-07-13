import 'endereco.dart';

abstract class Pessoa {
  String? email;
  String telefoneParaContato;
  Endereco endereco;
  String? get getEmail => this.email;

  get telefoneDeContato => null;

  set setEmail(String? email) => this.email = email;

  get getTelefoneParaContato => this.telefoneParaContato;

  set setTelefoneParaContato(telefoneParaContato) =>
      this.telefoneParaContato = telefoneParaContato;

  get getEndereco => this.endereco;

  set setEndereco(endereco) => this.endereco = endereco;

  Pessoa({
    this.email,
    required this.endereco,
    required this.telefoneParaContato,
  });
}
