import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/presentation/loans_screen/models/loans_model.dart';
import '../models/loans_item_model.dart';

/// A provider class for the LoansScreen.
///
/// This provider manages the state of the LoansScreen, including the
/// current loansModelObj

// ignore_for_file: must_be_immutable
class LoansProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  LoansModel loansModelObj = LoansModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
