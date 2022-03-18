import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon {
  static final SvgPicture character =
      SvgPicture.asset('assets/svg/character.svg');
  static final SvgPicture characterActive = SvgPicture.asset(
      'assets/svg/character.svg',
      color: const Color(0xff22A2BD));
  static final SvgPicture location =
      SvgPicture.asset('assets/svg/location.svg');
  static final SvgPicture locationActive = SvgPicture.asset(
      'assets/svg/location.svg',
      color: const Color(0xff22A2BD));
  static final SvgPicture episode = SvgPicture.asset('assets/svg/episode.svg');
  static final SvgPicture episodeActive = SvgPicture.asset(
      'assets/svg/episode.svg',
      color: const Color(0xff22A2BD));
  static final SvgPicture settings =
      SvgPicture.asset('assets/svg/Settings.svg');
  static final SvgPicture settingsActive = SvgPicture.asset(
      'assets/svg/Settings.svg',
      color: const Color(0xff22A2BD));
}
