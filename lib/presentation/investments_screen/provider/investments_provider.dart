import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/presentation/investments_screen/models/investments_model.dart';
import '../models/moneybagofdollars_item_model.dart';
import '../models/applestore_item_model.dart';

/// A provider class for the InvestmentsScreen.
///
/// This provider manages the state of the InvestmentsScreen, including the
/// current investmentsModelObj

// ignore_for_file: must_be_immutable
class InvestmentsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  InvestmentsModel investmentsModelObj = InvestmentsModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
