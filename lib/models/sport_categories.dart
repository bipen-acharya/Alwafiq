List<SportCategory> sportCategoryFromJson(List<dynamic> categoryJson) =>
    List<SportCategory>.from(categoryJson
        .map((categoryJson) => SportCategory.fromJson(categoryJson)));

class SportCategory {
  String? id;
  String? name;
  String? isEnabled;
  String? createdAt;
  String? updatedAt;

  SportCategory(
      {this.id, this.name, this.isEnabled, this.createdAt, this.updatedAt});

  SportCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'].toString();
    isEnabled = json['is_enabled'].toString();
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['is_enabled'] = isEnabled;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
