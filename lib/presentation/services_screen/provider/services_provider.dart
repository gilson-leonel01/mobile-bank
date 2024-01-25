import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/presentation/services_screen/models/services_model.dart';
import '../models/lifeinsurancefilled_item_model.dart';
import '../models/loanone_item_model.dart';

/// A provider class for the ServicesScreen.
///
/// This provider manages the state of the ServicesScreen, including the
/// current servicesModelObj

// ignore_for_file: must_be_immutable
class ServicesProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  ServicesModel servicesModelObj = ServicesModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
