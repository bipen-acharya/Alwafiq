class User {
  final int id;
  final String name;
  final String? companyKey;
  final String? username;
  final String email;
  final String mobile;
  final String profilePicture;
  final String country;
  final String? timezone;
  final String active;
  final String emailConfirmed;
  final String mobileConfirmed;
  final String? fcmToken;
  final String? apnToken;
  final String referralCode;
  final String? referredBy;
  final String rating;
  final String? lang;
  final String ratingTotal;
  final String noOfRatings;
  final String? loginBy;
  final String? lastKnownIp;
  final String? lastLoginAt;
  final String? socialProvider;
  final String? socialNickname;
  final String? socialId;
  final String? socialToken;
  final String? socialTokenSecret;
  final String? socialRefreshToken;
  final String? socialExpiresIn;
  final String? socialAvatar;
  final String? socialAvatarOriginal;
  final String createdAt;
  final String updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.profilePicture,
    required this.country,
    required this.active,
    required this.emailConfirmed,
    required this.mobileConfirmed,
    required this.referralCode,
    required this.rating,
    required this.ratingTotal,
    required this.noOfRatings,
    required this.createdAt,
    required this.updatedAt,
    this.companyKey,
    this.username,
    this.timezone,
    this.fcmToken,
    this.apnToken,
    this.referredBy,
    this.lang,
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
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      companyKey: json['company_key'],
      username: json['username'],
      email: json['email'],
      mobile: json['mobile'],
      profilePicture: json['profile_picture'],
      country: json['country'],
      timezone: json['timezone'],
      active: json['active'],
      emailConfirmed: json['email_confirmed'],
      mobileConfirmed: json['mobile_confirmed'],
      fcmToken: json['fcm_token'],
      apnToken: json['apn_token'],
      referralCode: json['refferal_code'],
      referredBy: json['referred_by'],
      rating: json['rating'],
      lang: json['lang'],
      ratingTotal: json['rating_total'],
      noOfRatings: json['no_of_ratings'],
      loginBy: json['login_by'],
      lastKnownIp: json['last_known_ip'],
      lastLoginAt: json['last_login_at'],
      socialProvider: json['social_provider'],
      socialNickname: json['social_nickname'],
      socialId: json['social_id'],
      socialToken: json['social_token'],
      socialTokenSecret: json['social_token_secret'],
      socialRefreshToken: json['social_refresh_token'],
      socialExpiresIn: json['social_expires_in'],
      socialAvatar: json['social_avatar'],
      socialAvatarOriginal: json['social_avatar_original'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
