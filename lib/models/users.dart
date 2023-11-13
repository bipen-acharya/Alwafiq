class User {
  int? id;
  String? name;
  String? companyKey;
  String? username;
  String? email;
  String? mobile;
  String? profilePicture;
  String? country;
  String? timezone;
  String? active;
  String? emailConfirmed;
  String? mobileConfirmed;
  String? fcmToken;
  String? apnToken;
  String? refferalCode;
  String? referredBy;
  String? rating;
  String? lang;
  String? ratingTotal;
  String? noOfRatings;
  String? loginBy;
  String? lastKnownIp;
  String? lastLoginAt;
  String? socialProvider;
  String? socialNickname;
  String? socialId;
  String? socialToken;
  String? socialTokenSecret;
  String? socialRefreshToken;
  String? socialExpiresIn;
  String? socialAvatar;
  String? socialAvatarOriginal;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.name,
      this.companyKey,
      this.username,
      this.email,
      this.mobile,
      this.profilePicture,
      this.country,
      this.timezone,
      this.active,
      this.emailConfirmed,
      this.mobileConfirmed,
      this.fcmToken,
      this.apnToken,
      this.refferalCode,
      this.referredBy,
      this.rating,
      this.lang,
      this.ratingTotal,
      this.noOfRatings,
      this.loginBy,
      this.lastKnownIp,
      this.lastLoginAt,
      this.socialProvider,
      this.socialNickname,
      this.socialId,
      this.socialToken,
      this.socialTokenSecret,
      this.socialRefreshToken,
      this.socialExpiresIn,
      this.socialAvatar,
      this.socialAvatarOriginal,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] as String?;
    companyKey = json['company_key'] as String?;
    username = json['username'] as String?;
    email = json['email'] as String?;
    mobile = json['mobile'] as String?;
    profilePicture = json['profile_picture'] as String?;
    country = json['country'] as String?;
    timezone = json['timezone'] as String?;
    active = json['active'] as String?;
    emailConfirmed = json['email_confirmed'] as String?;
    mobileConfirmed = json['mobile_confirmed'] as String?;
    fcmToken = json['fcm_token'] as String?;
    apnToken = json['apn_token'] as String?;
    refferalCode = json['refferal_code'] as String?;
    referredBy = json['referred_by'] as String?;
    rating = json['rating'] as String?;
    lang = json['lang'] as String?;
    ratingTotal = json['rating_total'] as String?;
    noOfRatings = json['no_of_ratings'] as String?;
    loginBy = json['login_by'] as String?;
    lastKnownIp = json['last_known_ip'] as String?;
    lastLoginAt = json['last_login_at'] as String?;
    socialProvider = json['social_provider'] as String?;
    socialNickname = json['social_nickname'] as String?;
    socialId = json['social_id'] as String?;
    socialToken = json['social_token'] as String?;
    socialTokenSecret = json['social_token_secret'] as String?;
    socialRefreshToken = json['social_refresh_token'] as String?;
    socialExpiresIn = json['social_expires_in'] as String?;
    socialAvatar = json['social_avatar'] as String?;
    socialAvatarOriginal = json['social_avatar_original'] as String?;
    createdAt = json['created_at'] as String?;
    updatedAt = json['updated_at'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['company_key'] = companyKey;
    data['username'] = username;
    data['email'] = email;
    data['mobile'] = mobile;
    data['profile_picture'] = profilePicture;
    data['country'] = country;
    data['timezone'] = timezone;
    data['active'] = active;
    data['email_confirmed'] = emailConfirmed;
    data['mobile_confirmed'] = mobileConfirmed;
    data['fcm_token'] = fcmToken;
    data['apn_token'] = apnToken;
    data['refferal_code'] = refferalCode;
    data['referred_by'] = referredBy;
    data['rating'] = rating;
    data['lang'] = lang;
    data['rating_total'] = ratingTotal;
    data['no_of_ratings'] = noOfRatings;
    data['login_by'] = loginBy;
    data['last_known_ip'] = lastKnownIp;
    data['last_login_at'] = lastLoginAt;
    data['social_provider'] = socialProvider;
    data['social_nickname'] = socialNickname;
    data['social_id'] = socialId;
    data['social_token'] = socialToken;
    data['social_token_secret'] = socialTokenSecret;
    data['social_refresh_token'] = socialRefreshToken;
    data['social_expires_in'] = socialExpiresIn;
    data['social_avatar'] = socialAvatar;
    data['social_avatar_original'] = socialAvatarOriginal;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
