import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/presentation/setting_preference_page/models/setting_preference_model.dart';

/// A provider class for the SettingPreferencePage.
///
/// This provider manages the state of the SettingPreferencePage, including the
/// current settingPreferenceModelObj
class SettingPreferenceProvider extends ChangeNotifier {
  TextEditingController classicController = TextEditingController();

  TextEditingController timeController = TextEditingController();

  SettingPreferenceModel settingPreferenceModelObj = SettingPreferenceModel();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  @override
  void dispose() {
    super.dispose();
    classicController.dispose();
    timeController.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }

  void changeSwitchBox2(bool value) {
    isSelectedSwitch1 = value;
    notifyListeners();
  }

  void changeSwitchBox3(bool value) {
    isSelectedSwitch2 = value;
    notifyListeners();
  }
}
