import '../caixa_operador.dart';

class CaixaOperadores {
  static List<CaixaOperador> _listaDeCaixaOperadores = [];

  static void cadastrar(CaixaOperador caixaoperador) {
    _listaDeCaixaOperadores.add(caixaoperador);
  }

  static Iterable<CaixaOperador> buscar(int matricula) {
    return _listaDeCaixaOperadores
        .where((caixaoperador) => caixaoperador.matricula == matricula);
  }

  static void editar(CaixaOperador vCaixaOperador) {
    bool localizar = _listaDeCaixaOperadores.contains(vCaixaOperador);

    if (localizar) {
      var caixaoperadores = buscar(vCaixaOperador.matricula);
      for (CaixaOperador antigo in caixaoperadores) {
        antigo.ramal = vCaixaOperador.ramal;
        antigo.salario = vCaixaOperador.salario;
        antigo.email = vCaixaOperador.email;
        antigo.endereco = vCaixaOperador.endereco;
      }
    }
  }

  static void remover(int matricula) {
    _listaDeCaixaOperadores
        .removeWhere((caixaoperador) => caixaoperador.matricula == matricula);
  }
}
