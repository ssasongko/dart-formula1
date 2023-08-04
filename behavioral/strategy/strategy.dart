abstract class InfoStrategy {
  void info();
}
class MobilF1InfoStrategy implements InfoStrategy {
  final String _nama;
  final int _tahun;

  MobilF1InfoStrategy(this._nama, this._tahun);

  @override
  void info() {
    print("Mobil F1 $_nama tahun $_tahun");
  }
}
class MobilBalap {
  InfoStrategy _infoStrategy;

  MobilBalap(this._infoStrategy);

  void setInfoStrategy(InfoStrategy infoStrategy) {
    _infoStrategy = infoStrategy;
  }

  void info() {
    _infoStrategy.info();
  }
}
void main() {
  final originalMobilStrategy = MobilF1InfoStrategy("Oracle Red Bull Racing", 2023);
  final clonedMobilStrategy = MobilF1InfoStrategy("Oracle Red Bull Racing", 2023);

  final originalMobil = MobilBalap(originalMobilStrategy);
  final clonedMobil = MobilBalap(clonedMobilStrategy);

  originalMobil.info();
  clonedMobil.info();
}
