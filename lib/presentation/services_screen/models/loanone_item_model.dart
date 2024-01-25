import '../../../core/app_export.dart';

/// This class is used in the [loanone_item_widget] screen.
class LoanoneItemModel {
  LoanoneItemModel({
    this.loanOne,
    this.businessLoans,
    this.itisalongestablished,
    this.viewDetails,
    this.id,
  }) {
    loanOne = loanOne ?? ImageConstant.imgLoan1;
    businessLoans = businessLoans ?? "Business loans";
    itisalongestablished = itisalongestablished ?? "It is a long established ";
    viewDetails = viewDetails ?? "View Details";
    id = id ?? "";
  }

  String? loanOne;

  String? businessLoans;

  String? itisalongestablished;

  String? viewDetails;

  String? id;
}
