import '../../../core/app_export.dart';
import 'loans_item_model.dart';

class LoansModel {
  List<LoansItemModel> loansItemList = [
    LoansItemModel(
        userThirtyTwo: ImageConstant.imgUser32,
        personalLoans: "Personal Loans",
        price: "50,000"),
    LoansItemModel(
        userThirtyTwo: ImageConstant.imgBriefcase1,
        personalLoans: "Corporate Loans",
        price: "100,000"),
    LoansItemModel(
        userThirtyTwo: ImageConstant.imgGraph1,
        personalLoans: "Business Loans",
        price: "500,000"),
    LoansItemModel(
        userThirtyTwo: ImageConstant.imgSupport1,
        personalLoans: "Custom Loans",
        price: "Choose Money")
  ];
}
