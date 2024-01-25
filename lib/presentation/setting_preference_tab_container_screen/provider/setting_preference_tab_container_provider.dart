import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/presentation/setting_preference_tab_container_screen/models/setting_preference_tab_container_model.dart';

/// A provider class for the SettingPreferenceTabContainerScreen.
///
/// This provider manages the state of the SettingPreferenceTabContainerScreen, including the
/// current settingPreferenceTabContainerModelObj
class SettingPreferenceTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SettingPreferenceTabContainerModel settingPreferenceTabContainerModelObj =
      SettingPreferenceTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
