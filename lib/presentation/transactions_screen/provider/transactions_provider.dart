import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/presentation/transactions_screen/models/transactions_model.dart';
import '../models/balance_item_model.dart';
import '../models/arrow_item_model.dart';

/// A provider class for the TransactionsScreen.
///
/// This provider manages the state of the TransactionsScreen, including the
/// current transactionsModelObj

// ignore_for_file: must_be_immutable
class TransactionsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  TransactionsModel transactionsModelObj = TransactionsModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
