abstract class AppAssets{
  static const images = _Images();
  static const svg = _Svg();
}

class _Images {
  const _Images();
  final String noAvatar = 'assets/images/bitmap/no_avatar.jpg';
}

class _Svg{
  const _Svg();
  final String personsIcon = 'assets/images/svg/person_icon.svg';
  final String settingsIcon = 'assets/images/svg/settings_icon.svg';
}