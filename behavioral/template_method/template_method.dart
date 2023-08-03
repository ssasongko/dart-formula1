abstract class F1RaceTemplate {
  void mulaiBalapan() {
    persiapkanMobil();
    lakukanStartBalapan();
    lakukanBalapan();
    lakukanPitStop();
    selesaikanBalapan();
  }

  void persiapkanMobil() {
    print("Mempersiapkan mobil Formula 1...");
  }

  void lakukanStartBalapan();

  void lakukanBalapan();

  void lakukanPitStop() {
    print("Melakukan pit stop...");
  }

  void selesaikanBalapan() {
    print("Balapan selesai!");
  }
}

class MonacoGrandPrix extends F1RaceTemplate {
  @override
  void lakukanStartBalapan() {
    print("Monaco Grand Prix: Balapan dimulai!");
  }

  @override
  void lakukanBalapan() {
    print(
        "Monaco Grand Prix: Balapan melalui jalan-jalan sempit di Monte Carlo.");
  }
}

class BelgianGrandPrix extends F1RaceTemplate {
  @override
  void lakukanStartBalapan() {
    print("Belgian Grand Prix: Balapan dimulai!");
  }

  @override
  void lakukanBalapan() {
    print(
        "Belgian Grand Prix: Balapan di sirkuit bersejarah Spa-Francorchamps.");
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
