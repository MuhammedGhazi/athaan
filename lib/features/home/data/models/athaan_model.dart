class AthaanModel {
  final String fajr;
  final String sunrise;
  final String dhuhr;
  final String asr;
  final String maghrib;
  final String isha;

  AthaanModel({
    required this.fajr,
    required this.sunrise,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
  });
  factory AthaanModel.fromJson(Map<String, dynamic> data) {
    var jsonData = data["data"][0]["timings"];
    return AthaanModel(
        fajr: jsonData["Fajr"],
        sunrise: jsonData["Sunrise"],
        dhuhr: jsonData["Dhuhr"],
        asr: jsonData["Asr"],
        maghrib: jsonData["Maghrib"],
        isha: jsonData["Isha"]);
  }
}
