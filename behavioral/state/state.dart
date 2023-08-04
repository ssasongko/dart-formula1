abstract class MobilAdapter {
  void akselerasi();
  void belok();
}
class MobilF1Adapter implements MobilAdapter {
  final MobilF1 _mobilF1;

  MobilF1Adapter(this._mobilF1);

  @override
  void akselerasi() {
    _mobilF1.akselerasi();
  }

  @override
  void belok() {
    _mobilF1.belok();
  }
}
abstract class MobilBalap {
  void akselerasi();
  void belok();
}

class MobilF1 implements MobilBalap {
  @override
  void akselerasi() {
    print("Mobil F1 melakukan akselerasi.");
  }

  @override
  void belok() {
    print("Mobil F1 melakukan belok.");
  }
}

abstract class DataPerforma {
  void getTenagaMesin();
  void getKecepatanMaksimal();
}

class SistemPerforma implements DataPerforma {
  @override
  void getTenagaMesin() {
    print("Power: 900 HP");
  }

  @override
  void getKecepatanMaksimal() {
    print("Top Speed: 350 km/h");
  }
}
void main() {
  final mobilF1 = MobilF1();
  final sistemPerforma = SistemPerforma();
  final mobilAdapter = MobilF1Adapter(mobilF1);

  print("Mobil Balap F1:");
  mobilF1.akselerasi();
  mobilF1.belok();

  print("\nMobil Balap dengan Adapter Performa:");
  mobilAdapter.akselerasi();
  mobilAdapter.belok();
}
