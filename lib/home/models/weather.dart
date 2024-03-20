import 'package:json_annotation/json_annotation.dart';
part 'weather.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Weather {
  final int? temp;

  final int? maxTemp;
  final int? minTemp;
  Weather({required this.temp, required this.maxTemp, required this.minTemp});

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
