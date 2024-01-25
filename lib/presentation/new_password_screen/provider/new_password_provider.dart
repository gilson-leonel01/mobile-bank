import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/presentation/new_password_screen/models/new_password_model.dart';

/// A provider class for the NewPasswordScreen.
///
/// This provider manages the state of the NewPasswordScreen, including the
/// current newPasswordModelObj

// ignore_for_file: must_be_immutable
class NewPasswordProvider extends ChangeNotifier {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  NewPasswordModel newPasswordModelObj = NewPasswordModel();

  bool isShowPassword = true;

  bool isShowPassword1 = true;

  @override
  void dispose() {
    super.dispose();
    newpasswordController.dispose();
    confirmpasswordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changePasswordVisibility1() {
    isShowPassword1 = !isShowPassword1;
    notifyListeners();
  }
}
