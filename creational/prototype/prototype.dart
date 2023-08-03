// Abstrak kelas prototype
abstract class MobilBalapPrototype {
  MobilBalapPrototype clone();
  void info();
}

class MobilF1 extends MobilBalapPrototype {
  final String _nama;
  final int _tahun;

  MobilF1(this._nama, this._tahun);

  @override
  MobilBalapPrototype clone() {
    return MobilF1(_nama, _tahun);
  }

  @override
  void info() {
    print("Mobil F1 $_nama tahun $_tahun");
  }
}

void main() {
  final originalMobil = MobilF1("Oracle Red Bull Racing", 2023);
  final clonedMobil = originalMobil.clone();

  originalMobil.info();
  clonedMobil.info();
}
