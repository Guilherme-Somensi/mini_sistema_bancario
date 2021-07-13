import '../conta.dart';

class Contas {
  static List<Conta> _listaDeContas = [];

  static void cadastrar(Conta conta) {
    _listaDeContas.add(conta);
  }

  static Iterable<Conta> buscar(String numero) {
    return _listaDeContas.where((conta) => conta.numero == numero);
  }

  static void editar(Conta vConta) {
    bool localizar = _listaDeContas.contains(vConta);

    if (localizar) {
      var contas = buscar(vConta.numero);
      for (Conta antigo in contas) {
        antigo.agencia = vConta.agencia;
        antigo.cliente = vConta.cliente;
      }
    }
  }

  static void remover(int agencia) {
    _listaDeContas.removeWhere((conta) => conta.agencia == agencia);
  }
}
