import 'dart:ffi';

import '../agencia.dart';

class Agencias {
  static List<Agencia> _listaDeAgencia = [];

  static void cadastrar(Agencia agencia) {
    _listaDeAgencia.add(agencia);
  }

  static Iterable<Agencia> buscar(int numero) {
    return _listaDeAgencia.where((agencia) => agencia.numero == numero);
  }

  static void editar(Agencia vAgencia) {
    bool localizar = _listaDeAgencia.contains(vAgencia);

    if (localizar) {
      var agencias = buscar(vAgencia.numero);
      for (Agencia antiga in agencias) {
        antiga.endereco = vAgencia.endereco;
        antiga.gerente = vAgencia.gerente;
        antiga.numero = vAgencia.numero;
      }
    }
  }

  static void remover(int numero) {
    _listaDeAgencia.removeWhere((agencia) => agencia.numero == numero);
  }
}
