abstract class F1Race {
  final F1RaceImplementation implementation;

  F1Race(this.implementation);

  void mulaiBalapan() {
    persiapkanMobil();
    implementation.lakukanStartBalapan();
    implementation.lakukanBalapan();
    implementation.lakukanPitStop();
    selesaikanBalapan();
  }

  void persiapkanMobil() {
    print("Mempersiapkan mobil Formula 1...");
  }

  @override
  void lakukanStartBalapan() {
    print("Balapan dimulai!");
  }

  @override
  void lakukanBalapan() {
    print("Balapan berlangsung...");
  }

  void lakukanPitStop() {
    print("Melakukan pit stop...");
  }

  void selesaikanBalapan() {
    print("Balapan selesai!");
  }
}

class MonacoGrandPrix extends F1Race {
  MonacoGrandPrix() : super(MonacoGrandPrixImplementation());
}

class BelgianGrandPrix extends F1Race {
  BelgianGrandPrix() : super(BelgianGrandPrixImplementation());
}

abstract class F1RaceImplementation {
  void lakukanStartBalapan();

  void lakukanBalapan();

  void lakukanPitStop();
}

class MonacoGrandPrixImplementation extends F1RaceImplementation {
  @override
  void lakukanStartBalapan() {
    print("Monaco Grand Prix: Balapan dimulai!");
  }

  @override
  void lakukanBalapan() {
    print(
        "Monaco Grand Prix: Balapan melalui jalan-jalan sempit di Monte Carlo.");
  }

  @override
  void lakukanPitStop() {
    print("Melakukan pit stop di Monte Carlo...");
  }
}

class BelgianGrandPrixImplementation extends F1RaceImplementation {
  @override
  void lakukanStartBalapan() {
    print("Belgian Grand Prix: Balapan dimulai!");
  }

  @override
  void lakukanBalapan() {
    print(
        "Belgian Grand Prix: Balapan di sirkuit bersejarah Spa-Francorchamps.");
  }

  @override
  void lakukanPitStop() {
    print("Melakukan pit stop di Spa-Francorchamps...");
  }
}

void main() {
  print("-- Grand Prix Monaco --");
  var monacoRace = MonacoGrandPrix();
  monacoRace.mulaiBalapan();

  print("\n== Grand Prix Belgia ==");
  var belgianRace = BelgianGrandPrix();
  belgianRace.mulaiBalapan();
}