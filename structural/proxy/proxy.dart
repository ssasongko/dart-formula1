class F1Track {
  final String name;
  final String location;
  double lengthInKm;
  double topSpeedKmh;
  int numberOfTurns;
  String bestLapTime;

  F1Track(this.name, this.location, this.lengthInKm, this.topSpeedKmh,
      this.numberOfTurns, this.bestLapTime);

  void displayInfo() {
    print("Track: $name");
    print("Location: $location");
    print("Length: $lengthInKm km");
    print("Top Speed: $topSpeedKmh km/h");
    print("Number of Turns: $numberOfTurns");
    print("Best Lap Time: $bestLapTime");
    print("\n");
  }

  void setBestLapTime(String newBestLapTime) {
    bestLapTime = newBestLapTime;
    print("$name lap time updated to $newBestLapTime");
    print("\n");
  }
}

class F1TrackProxy {
  final F1Track track;

  F1TrackProxy(this.track);

  void displayInfo() {
    track.displayInfo();
  }

  void setBestLapTime(String newBestLapTime) {
    track.setBestLapTime(newBestLapTime);
  }
}

void main() {
  var spa = F1Track(
      "Spa-Francorchamps", "Stavelot, Belgium", 7.0, 360, 20, "1:42.519");
  var mexicoCity = F1Track("Mexico City", "Mexico", 4.3, 335, 17, "1:18.741");
  var monaco =
  F1Track("Monaco", "Monte Carlo, Monaco", 3.3, 290, 19, "1:11.278");

  var proxySpa = F1TrackProxy(spa);
  var proxyMexico = F1TrackProxy(mexicoCity);
  var proxyMonaco = F1TrackProxy(monaco);


  proxySpa.displayInfo();
  proxyMexico.displayInfo();
  proxyMonaco.displayInfo();
  proxySpa.setBestLapTime("1:39.488");
  proxySpa.displayInfo();
}