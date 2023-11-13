
class GameOnCities {
  String? pokhara;

  GameOnCities({this.pokhara});

  GameOnCities.fromJson(Map<String, dynamic> json) {
    pokhara = json['pokhara'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pokhara'] = pokhara;
    return data;
  }
}
