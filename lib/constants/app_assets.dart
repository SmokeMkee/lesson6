abstract class AppAssets{
  static const images = _Images();
  static const svg = _Svg();
}

class _Images {
  const _Images();
  final String noAvatar = 'assets/images/bitmap/no_avatar.jpg';
  final String logo = 'assets/images/bitmap/logo.png';
  final String morty = 'assets/images/bitmap/morty.png';
  final String rick = 'assets/images/bitmap/rick.png';
  final String bgImage = 'assets/images/bitmap/bg_image.png';
}

class _Svg{
  const _Svg();
  final String personsIcon = 'assets/images/svg/persons_icon.svg';
  final String settingsIcon = 'assets/images/svg/settings_icon.svg';
  final String loginPrefixIcon = 'assets/images/svg/login_prefix_icon.svg';
  final String eyeTextField = "assets/images/svg/eye.svg";

  final String passwordPrefixIcon ='assets/images/svg/password_prefix_icon.svg';
}