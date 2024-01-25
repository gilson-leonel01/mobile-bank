import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/presentation/setting_security_page/models/setting_security_model.dart';

/// A provider class for the SettingSecurityPage.
///
/// This provider manages the state of the SettingSecurityPage, including the
/// current settingSecurityModelObj
class SettingSecurityProvider extends ChangeNotifier {
  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  SettingSecurityModel settingSecurityModelObj = SettingSecurityModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    newpasswordController.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
