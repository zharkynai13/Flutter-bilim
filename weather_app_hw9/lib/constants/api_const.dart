class ApiConst {
  static String address ({required double lat, required double lon}) => 'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&exclude=hourly,daily,minutely&appid=41aa18abb8974c0ea27098038f6feb1b';
  static String getIcon(String IconData, int iconSize) {
    return "penweathermap.org/img/wn/$IconData@${iconSize}x.png";
  }
  static String getWeatherData (String name) => "https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=9d48ca0f0ec99ebd94d30163f03012be";
}