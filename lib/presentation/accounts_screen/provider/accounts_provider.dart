import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/presentation/accounts_screen/models/accounts_model.dart';
import '../models/accountsgrid_item_model.dart';

/// A provider class for the AccountsScreen.
///
/// This provider manages the state of the AccountsScreen, including the
/// current accountsModelObj

// ignore_for_file: must_be_immutable
class AccountsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  AccountsModel accountsModelObj = AccountsModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
