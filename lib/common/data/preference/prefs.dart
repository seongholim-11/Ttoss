import 'package:fast_app_base/common/data/preference/item/rxn_preference_item.dart';
import 'package:fast_app_base/common/theme/custom_theme.dart';
import 'package:get/get_rx/get_rx.dart';
import 'app_preferences.dart';
import 'item/nullable_preference_item.dart';
import 'item/preference_item.dart';
import 'item/rx_preference_item.dart';

class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
  // static final isPushOn = PreferenceItem<bool>('isPushOn', false);
  static final isPushOnRx = RxPreferenceItem<bool, RxBool>('isPushOn', false);
  static final sliderPosition =
      RxPreferenceItem<double, RxDouble>('sliderPosition', 0.0);
  static final birthDay =
      RxnPreferenceItem<DateTime, Rxn<DateTime>>('birthDay', null);
  static final number = RxPreferenceItem<int, RxInt>('number', 0);
}
