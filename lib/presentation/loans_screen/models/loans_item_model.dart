import '../../../core/app_export.dart';

/// This class is used in the [loans_item_widget] screen.
class LoansItemModel {
  LoansItemModel({
    this.userThirtyTwo,
    this.personalLoans,
    this.price,
    this.id,
  }) {
    userThirtyTwo = userThirtyTwo ?? ImageConstant.imgUser32;
    personalLoans = personalLoans ?? "Personal Loans";
    price = price ?? "50,000";
    id = id ?? "";
  }

  String? userThirtyTwo;

  String? personalLoans;

  String? price;

  String? id;
}
