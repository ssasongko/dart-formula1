class PersiapanBalapan {
  void persiapanMobil() {
    print("Mobil-mobil F1 sedang dipersiapkan untuk balapan.");
  }
}

class Kualifikasi {
  void jalankanKualifikasi() {
    print("Kualifikasi sedang berlangsung.");
  }
}

class PitStop {
  void lakukanPitStop() {
    print("Pit stop sedang dilakukan.");
  }
}

class Interview {
  void lakukanInterview() {
    print("Wawancara dengan pembalap setelah balapan.");
  }
}

class Selebrasi {
  void lakukanSelebrasi() {
    print("Pembalap merayakan kemenangan di atas podium.");
  }
}

class F1Factory {
  static F1Factory instance = F1Factory._();

  factory F1Factory() {
    return instance;
  }

  F1Factory._() {
    instance = this;
  }

  PersiapanBalapan get persiapanBalapan => PersiapanBalapan();

  Kualifikasi get kualifikasi => Kualifikasi();

  PitStop get pitStop => PitStop();

  Interview get interview => Interview();

  Selebrasi get selebrasi => Selebrasi();
}

void main() {
  final f1Factory = F1Factory.instance;

  print("Persiapan Balapan:");
  f1Factory.persiapanBalapan.persiapanMobil();

  print("\nKualifikasi:");
  f1Factory.kualifikasi.jalankanKualifikasi();

  print("\nPit Stop:");
  f1Factory.pitStop.lakukanPitStop();

  print("\nInterview Setelah Balapan:");
  f1Factory.interview.lakukanInterview();

  print("\nSelebrasi di Atas Podium:");
  f1Factory.selebrasi.lakukanSelebrasi();
}