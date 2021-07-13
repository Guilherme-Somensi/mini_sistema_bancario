import '../pessoa.dart';

class Clientes {
  static List<Pessoa> _listaDeClientes = [];

  static void cadastrar(Pessoa pessoa) {
    _listaDeClientes.add(pessoa);
  }

  static Iterable<Pessoa> buscar(String telefoneParaContato) {
    return _listaDeClientes
        .where((pessoa) => pessoa.telefoneParaContato == telefoneParaContato);
  }

  static void editar(Pessoa vPessoa) {
    bool localizado = _listaDeClientes.contains(vPessoa);

    if (localizado) {
      var clientes = buscar(vPessoa.telefoneParaContato);
      for (Pessoa antigo in clientes) {
        antigo.endereco = vPessoa.endereco;
        antigo.email = vPessoa.email;
        antigo.telefoneParaContato = vPessoa.telefoneParaContato;
      }
    }
  }

  static void remover(int endereco) {
    _listaDeClientes.removeWhere((pessoa) => pessoa.endereco == endereco);
  }
}
