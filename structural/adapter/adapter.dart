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

class AdapterPerforma implements MobilBalap {
  final DataPerforma _sistemPerforma;

  AdapterPerforma(this._sistemPerforma);

  @override
  void akselerasi() {
    _sistemPerforma.getTenagaMesin();
    print("Mobil melakukan akselerasi cepat.");
  }

  @override
  void belok() {
    _sistemPerforma.getKecepatanMaksimal();
    print("Mobil belok dengan presisi tinggi.");
  }
}

void main() {
  final mobilF1 = MobilF1();
  final sistemPerforma = SistemPerforma();
  final mobilAdapter = AdapterPerforma(sistemPerforma);

  print("Mobil Balap F1:");
  mobilF1.akselerasi();
  mobilF1.belok();

  print("\nMobil Balap dengan Adapter Performa:");
  mobilAdapter.akselerasi();
  mobilAdapter.belok();
}
