// ignore_for_file: public_member_api_docs, sort_constructors_first

class WeatherData {
  Coord? coord;
  List<Weather>? weather;
  String? base;
  MainWeather? main;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  WeatherData({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  factory WeatherData.fromMap(Map<String, dynamic> map) {
    return WeatherData(
      coord: map['coord'] != null ? Coord.fromMap(map['coord']) : null,
      weather: map['weather'] != null
          ? List<Weather>.from(
              map['weather'].map((x) => Weather.fromMap(x)),
            )
          : null,
      base: map['base'],
      main: map['main'] != null ? MainWeather.fromMap(map['main']) : null,
      visibility: map['visibility'],
      wind: map['wind'] != null ? Wind.fromMap(map['wind']) : null,
      clouds: map['clouds'] != null ? Clouds.fromMap(map['clouds']) : null,
      dt: map['dt'],
      sys: map['sys'] != null ? Sys.fromMap(map['sys']) : null,
      timezone: map['timezone'],
      id: map['id'],
      name: map['name'],
      cod: map['cod'],
    );
  }
}

class Coord {
  double? lon;
  double? lat;

  Coord({this.lon, this.lat});

  factory Coord.fromMap(Map<String, dynamic> map) {
    return Coord(
      lon: map['lon']?.toDouble(),
      lat: map['lat']?.toDouble(),
    );
  }
}

class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      id: map['id'],
      main: map['main'],
      description: map['description'],
      icon: map['icon'],
    );
  }
}

class MainWeather {
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;
  int? seaLevel;
  int? grndLevel;

  MainWeather({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.seaLevel,
    this.grndLevel,
  });

  factory MainWeather.fromMap(Map<String, dynamic> map) {
    return MainWeather(
      temp: map['temp']?.toDouble(),
      feelsLike: map['feels_like']?.toDouble(),
      tempMin: map['temp_min']?.toDouble(),
      tempMax: map['temp_max']?.toDouble(),
      pressure: map['pressure'],
      humidity: map['humidity'],
      seaLevel: map['sea_level'],
      grndLevel: map['grnd_level'],
    );
  }
}

class Wind {
  double? speed;
  int? deg;
  double? gust;

  Wind({this.speed, this.deg, this.gust});

  factory Wind.fromMap(Map<String, dynamic> map) {
    return Wind(
      speed: map['speed']?.toDouble(),
      deg: map['deg'],
      gust: map['gust']?.toDouble(),
    );
  }
}

class Clouds {
  int? all;

  Clouds({this.all});

  factory Clouds.fromMap(Map<String, dynamic> map) {
    return Clouds(
      all: map['all'],
    );
  }
}

class Sys {
  String? country;
  int? sunrise;
  int? sunset;

  Sys({this.country, this.sunrise, this.sunset});

  factory Sys.fromMap(Map<String, dynamic> map) {
    return Sys(
      country: map['country'],
      sunrise: map['sunrise'],
      sunset: map['sunset'],
    );
  }
}
