class Weather {
  double temp;
  String description;
  int precipitation;
  String datetime;

  Weather({
    this.temp = 0.0,
    this.description = '',
    this.precipitation = 0,
    this.datetime = ''
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      description: json["weather"]["description"],
        temp: json["temp"].runtimeType == int?double.tryParse(json["temp"].toString()):json["temp"],
      precipitation: json["precip"],
      datetime: json["datetime"]
    );
  }
}
