class WeatherForecast {
  String? cod;
  int? message;
  int? cnt;
  List<Forecast>? list;
  City? city;

  WeatherForecast({
    this.cod,
    this.message,
    this.cnt,
    this.list,
    this.city,
  });

  factory WeatherForecast.fromMap(Map<String, dynamic> map) {
    return WeatherForecast(
      cod: map['cod'],
      message: map['message'],
      cnt: map['cnt'],
      list: map['list'] != null
          ? List<Forecast>.from(
              map['list'].map((x) => Forecast.fromMap(x)),
            )
          : null,
      city: map['city'] != null ? City.fromMap(map['city']) : null,
    );
  }
}

class Forecast {
  int? dt;
  MainWeather? main;
  List<Weather>? weather;
  Clouds? clouds;
  Wind? wind;
  int? visibility;
  double? pop;
  Sys? sys;
  String? dtTxt;

  Forecast({
    this.dt,
    this.main,
    this.weather,
    this.clouds,
    this.wind,
    this.visibility,
    this.pop,
    this.sys,
    this.dtTxt,
  });

  factory Forecast.fromMap(Map<String, dynamic> map) {
    return Forecast(
      dt: map['dt'],
      main: map['main'] != null ? MainWeather.fromMap(map['main']) : null,
      weather: map['weather'] != null
          ? List<Weather>.from(
              map['weather'].map((x) => Weather.fromMap(x)),
            )
          : null,
      clouds: map['clouds'] != null ? Clouds.fromMap(map['clouds']) : null,
      wind: map['wind'] != null ? Wind.fromMap(map['wind']) : null,
      visibility: map['visibility'],
      pop: (map['pop'] as num?)?.toDouble(),
      sys: map['sys'] != null ? Sys.fromMap(map['sys']) : null,
      dtTxt: map['dt_txt'],
    );
  }
}

class City {
  int? id;
  String? name;
  Coord? coord;
  String? country;
  int? population;
  int? timezone;
  int? sunrise;
  int? sunset;

  City({
    this.id,
    this.name,
    this.coord,
    this.country,
    this.population,
    this.timezone,
    this.sunrise,
    this.sunset,
  });

  factory City.fromMap(Map<String, dynamic> map) {
    return City(
      id: map['id'],
      name: map['name'],
      coord: map['coord'] != null ? Coord.fromMap(map['coord']) : null,
      country: map['country'],
      population: map['population'],
      timezone: map['timezone'],
      sunrise: map['sunrise'],
      sunset: map['sunset'],
    );
  }
}

class MainWeather {
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? seaLevel;
  int? grndLevel;
  int? humidity;
  double? tempKf;

  MainWeather({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.seaLevel,
    this.grndLevel,
    this.humidity,
    this.tempKf,
  });

  factory MainWeather.fromMap(Map<String, dynamic> map) {
    return MainWeather(
      temp: (map['temp'] as num?)?.toDouble(),
      feelsLike: (map['feels_like'] as num?)?.toDouble(),
      tempMin: (map['temp_min'] as num?)?.toDouble(),
      tempMax: (map['temp_max'] as num?)?.toDouble(),
      pressure: map['pressure'],
      seaLevel: map['sea_level'],
      grndLevel: map['grnd_level'],
      humidity: map['humidity'],
      tempKf: (map['temp_kf'] as num?)?.toDouble(),
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

class Clouds {
  int? all;

  Clouds({this.all});

  factory Clouds.fromMap(Map<String, dynamic> map) {
    return Clouds(
      all: map['all'],
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
      speed: (map['speed'] as num?)?.toDouble(),
      deg: map['deg'],
      gust: (map['gust'] as num?)?.toDouble(),
    );
  }
}

class Sys {
  String? pod;

  Sys({this.pod});

  factory Sys.fromMap(Map<String, dynamic> map) {
    return Sys(
      pod: map['pod'],
    );
  }
}

class Coord {
  double? lat;
  double? lon;

  Coord({this.lat, this.lon});

  factory Coord.fromMap(Map<String, dynamic> map) {
    return Coord(
      lat: (map['lat'] as num?)?.toDouble(),
      lon: (map['lon'] as num?)?.toDouble(),
    );
  }
}
