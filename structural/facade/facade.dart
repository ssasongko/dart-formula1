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
    print("Wawancara dengan pembalap setelah balapan selesai.");
  }
}

class Selebrasi {
  void lakukanSelebrasi() {
    print("Pembalap merayakan kemenangan di atas podium.");
  }
}

class F1Facade {
  final PersiapanBalapan _persiapanBalapan;
  final Kualifikasi _kualifikasi;
  final PitStop _pitStop;
  final Interview _interview;
  final Selebrasi _selebrasi;

  F1Facade()
      : _persiapanBalapan = PersiapanBalapan(),
        _kualifikasi = Kualifikasi(),
        _pitStop = PitStop(),
        _interview = Interview(),
        _selebrasi = Selebrasi();

  void persiapanBalapan() {
    _persiapanBalapan.persiapanMobil();
  }

  void lakukanKualifikasi() {
    _kualifikasi.jalankanKualifikasi();
  }

  void lakukanPitStop() {
    _pitStop.lakukanPitStop();
  }

  void lakukanInterviewSetelahBalapan() {
    _interview.lakukanInterview();
  }

  void lakukanSelebrasiDiPodium() {
    _selebrasi.lakukanSelebrasi();
  }
}

void main() {
  final f1Facade = F1Facade();

  print("Persiapan Balapan:");
  f1Facade.persiapanBalapan();

  print("\nKualifikasi:");
  f1Facade.lakukanKualifikasi();

  print("\nPit Stop:");
  f1Facade.lakukanPitStop();

  print("\nInterview Setelah Balapan:");
  f1Facade.lakukanInterviewSetelahBalapan();

  print("\nSelebrasi di Atas Podium:");
  f1Facade.lakukanSelebrasiDiPodium();
}
