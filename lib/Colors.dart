// ignore_for_file: file_names, constant_identifier_names

import 'package:flutter/material.dart';

// const KCOLOR_PRIMARY = Color(0xFF182d46);
const KCOLOR_PRIMARY = Color(0xFF0B2848);

const KCOLOR_SECONDARY = Color(0xFFF3F6F9);
const kBackgroundColor = Color(0xFFF3F6F9);
const TextPrimary = Color(0xFF223C5A);
const TextPrimary2 = Color(0xFF0B294B);
const TextSeconday = Color(0xFF495E76);
const DarkModeColor = Color(0xFF39393B);
const LinkColor = Color(0xFF1B68BB);
const KLIGHTPINK_COLOR = Color(0xFFFFDDDD);
const KLIGHT_YELLOW = Color(0xFFF8F6D5);
const KDIVIDER_COLOR = Color(0xFFE7ECF2);
const KICON_COLOR = Color(0xFF223C5A);
const KLIGHT_PERPAL = Color(0xFFE7DDFF);
const KLIGHT_GREEN = Color(0xFFE2FFDD);
const KLIGHT_GRAY = Color(0xFFD6DDE5);
const KINPUT_COLOR = Color(0xFFE7ECF2);
const KPRIMARY_GRAD_MIX = Color(0xFF0E2C4D);
const KDARK_ICON = Color(0xFF122C49);

const KScreenBgColor = Color(0xFFE5E5E5);
const KCOLOR_SHADOW = Color(0xFF29B48A);
const GREY_COLOR = Color(0xFF718196);
const blackColor = Color(0xFF333333);
const KDROP_ICON = Color(0xFF707070);
const KINPUT_BORDER = Color(0xFFC6CCD5);
const THEME_GREEN = Color(0xFF5ccd91);

class DynamicColors {
  static final DynamicColors _singleton = DynamicColors();

  static DynamicColors get instance => _singleton;

  Color getLableColor(String status) {
    Color result = KLIGHT_GRAY;
    switch (status) {
      case "DRAFT":
        result = KLIGHTPINK_COLOR;
        break;
      case "SUBMITTED":
        result = KLIGHT_YELLOW;
        break;
      case "ACCEPTED":
        result = KLIGHT_GREEN;
        break;
      case "REVOKED":
        result = KLIGHT_PERPAL;
        break;
    }
    return result;
  }
}
