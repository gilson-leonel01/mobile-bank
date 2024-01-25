import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/presentation/setting_edit_profile_page/models/setting_edit_profile_model.dart';
import 'package:mobile_bank/data/models/me/get_me_resp.dart';
import 'dart:async';
import 'package:mobile_bank/data/repository/repository.dart';

/// A provider class for the SettingEditProfilePage.
///
/// This provider manages the state of the SettingEditProfilePage, including the
/// current settingEditProfileModelObj

// ignore_for_file: must_be_immutable
class SettingEditProfileProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController addressController1 = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  SettingEditProfileModel settingEditProfileModelObj =
      SettingEditProfileModel();

  final _repository = Repository();

  var getMeResp = GetMeResp();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    addressController.dispose();
    addressController1.dispose();
    cityController.dispose();
    countryController.dispose();
  }

  FutureOr<void> callFetchMe({Function? onError}) async {
    await _repository.fetchMe(
      headers: {
        'Content-type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODY4OTgyMn0.fh9TL3QIkwUvqXNQ9ztlvb5qXnN-st_70G9CsvVB0M8',
      },
    ).then((value) async {
      getMeResp = value;
      _onFetchMeSuccess(value);
      notifyListeners();
    }).onError((error, stackTrace) {
      //implement error call
      _onFetchMeError();
      onError?.call();
    });
  }

  void _onFetchMeSuccess(GetMeResp resp) {}
  void _onFetchMeError() {
    //implement error method body...
  }
}
