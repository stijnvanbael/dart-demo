import 'dart:async';
import 'dart:math';

enum Weather {
  sunny,
  clouded,
  rain,
  snow
}

class WeatherService {
  Future<Weather> weatherFor(String location) async {
    await sleep(new Random().nextInt(2000));
    switch (location) {
      case 'Miami':
        return Weather.sunny;
      case 'Brussels':
        return Weather.rain;
      case 'Moscow':
        return Weather.snow;
    }
    return Weather.clouded;
  }
}

printWeather(WeatherService weatherService, String location) async {
  DateTime start = new DateTime.now();

  Weather weather = await weatherService.weatherFor(location);

  DateTime end = new DateTime.now();
  int duration = end.millisecondsSinceEpoch - start.millisecondsSinceEpoch;
  print('$location: ${format(weather)} (${duration} ms)');
}

main() {
  WeatherService weatherService = new WeatherService();

  printWeather(weatherService, 'Brussels');
  printWeather(weatherService, 'Miami');
  printWeather(weatherService, 'Moscow');
  printWeather(weatherService, 'London');
}

format(Weather weather) {
  String weatherAsString = weather.toString();
  return weatherAsString.substring(weatherAsString.indexOf('.') + 1);
}

sleep(int millis) {
  Completer completer = new Completer();
  new Timer(new Duration(milliseconds: millis), () => completer.complete());
  return completer.future;
}