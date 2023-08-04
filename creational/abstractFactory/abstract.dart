abstract class PimpinanTimFactory {
  PimpinanTim createPimpinanTim(String name);
}
class TimPrincipalFactory implements PimpinanTimFactory {
  @override
  PimpinanTim createPimpinanTim(String name) {
    return TimPrincipal();
  }
}
class PembalapFactory implements PimpinanTimFactory {
  @override
  PimpinanTim createPimpinanTim(String name) {
    return Pembalap(name);
  }
}

abstract class PimpinanTim {
  PimpinanTim? _successor;

  void setSuccessor(PimpinanTim successor) {
    _successor = successor;
  }

  void handleRequest(String request);
}
class TimPrincipal extends PimpinanTim {
  @override
  void handleRequest(String request) {
    if (request == 'Mulai balapan!') {
      print('Team Principal: Instruksi untuk memulai balapan telah diberikan.');
    } else if (_successor != null) {
      _successor!.handleRequest(request);
    }
  }
}

class Pembalap extends PimpinanTim {
  final String _nama;

  Pembalap(this._nama);

  @override
  void handleRequest(String request) {
    if (request == 'Mulai balapan!') {
      print('$_nama: Saya siap untuk memulai balapan!');
    } else if (_successor != null) {
      _successor!.handleRequest(request);
    }
  }
}

void main() {
  final pimpinanTimFactory = TimPrincipalFactory();
  final pembalapFactory = PembalapFactory();

  final timPrincipal = pimpinanTimFactory.createPimpinanTim('Tim Principal');
  final pembalap1 = pembalapFactory.createPimpinanTim('Lewis Hamilton');
  final pembalap2 = pembalapFactory.createPimpinanTim('Max Verstappen');

  timPrincipal.setSuccessor(pembalap1);
  pembalap1.setSuccessor(pembalap2);

  print('Balapan akan dimulai!\n');
  timPrincipal.handleRequest('Mulai balapan!');
}
