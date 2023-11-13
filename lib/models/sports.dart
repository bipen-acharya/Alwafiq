List<Sports> getSportsFromJson(List<dynamic> sportsJson) =>
    List<Sports>.from(sportsJson
        .map((sportsJson) => Sports.fromJson(sportsJson)));

class Sports {
  int? id;
  String? title;
  String? address;
  String? city;
  String? description;
  int? pricePerHour;
  String? openingTime;
  String? closingTime;
  int? vendorId;
  int? sportCategoryId;
  String? createdAt;
  String? updatedAt;
  Vendor? vendor;
  SportCategory? sportCategory;

  Sports(
      {this.id,
      this.title,
      this.address,
      this.city,
      this.description,
      this.pricePerHour,
      this.openingTime,
      this.closingTime,
      this.vendorId,
      this.sportCategoryId,
      this.createdAt,
      this.updatedAt,
      this.vendor,
      this.sportCategory});

  Sports.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    address = json['address'];
    city = json['city'];
    description = json['description'];
    pricePerHour = json['price_per_hour'];
    openingTime = json['opening_time'];
    closingTime = json['closing_time'];
    vendorId = json['vendor_id'];
    sportCategoryId = json['sport_category_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    vendor = json['vendor'] != null ? Vendor.fromJson(json['vendor']) : null;
    sportCategory = json['sport_category'] != null
        ? SportCategory.fromJson(json['sport_category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['address'] = address;
    data['city'] = city;
    data['description'] = description;
    data['price_per_hour'] = pricePerHour;
    data['opening_time'] = openingTime;
    data['closing_time'] = closingTime;
    data['vendor_id'] = vendorId;
    data['sport_category_id'] = sportCategoryId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (vendor != null) {
      data['vendor'] = vendor!.toJson();
    }
    if (sportCategory != null) {
      data['sport_category'] = sportCategory!.toJson();
    }
    return data;
  }
}

class Vendor {
  int? id;
  int? userId;
  String? name;
  String? city;
  String? address;
  String? zipcode;
  String? googleMapLink;
  String? taxNumber;
  String? status;
  int? isBanned;
  String? bannedReason;
  int? isClose;
  String? createdAt;
  String? updatedAt;
  String? displayImage;
  List<String>? media;

  Vendor(
      {this.id,
      this.userId,
      this.name,
      this.city,
      this.address,
      this.zipcode,
      this.googleMapLink,
      this.taxNumber,
      this.status,
      this.isBanned,
      this.bannedReason,
      this.isClose,
      this.createdAt,
      this.updatedAt,
      this.displayImage,
      this.media});

  Vendor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    name = json['name'];
    city = json['city'];
    address = json['address'];
    zipcode = json['zipcode'];
    googleMapLink = json['google_map_link'];
    taxNumber = json['tax_number'];
    status = json['status'];
    isBanned = json['is_banned'];
    bannedReason = json['banned_reason'];
    isClose = json['is_close'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    displayImage = json['display_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['name'] = name;
    data['city'] = city;
    data['address'] = address;
    data['zipcode'] = zipcode;
    data['google_map_link'] = googleMapLink;
    data['tax_number'] = taxNumber;
    data['status'] = status;
    data['is_banned'] = isBanned;
    data['banned_reason'] = bannedReason;
    data['is_close'] = isClose;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['display_image'] = displayImage;

    return data;
  }
}

class SportCategory {
  int? id;
  String? name;
  int? isEnabled;
  String? createdAt;
  String? updatedAt;

  SportCategory(
      {this.id, this.name, this.isEnabled, this.createdAt, this.updatedAt});

  SportCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    isEnabled = json['is_enabled'];
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
