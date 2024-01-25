import '../../../core/app_export.dart';
import 'lifeinsurancefilled_item_model.dart';
import 'loanone_item_model.dart';

class ServicesModel {
  List<LifeinsurancefilledItemModel> lifeinsurancefilledItemList = [
    LifeinsurancefilledItemModel(
        lifeInsuranceFilled: ImageConstant.imgLifeInsuranceFilled,
        lifeInsurance: "Life Insurance",
        unlimitedProtection: "Unlimited protection"),
    LifeinsurancefilledItemModel(
        lifeInsuranceFilled: ImageConstant.imgBag1,
        lifeInsurance: "Shopping",
        unlimitedProtection: "Buy. Think. Grow"),
    LifeinsurancefilledItemModel(
        lifeInsuranceFilled: ImageConstant.imgShield1,
        lifeInsurance: "Safety",
        unlimitedProtection: "We are your allies")
  ];

  List<LoanoneItemModel> loanoneItemList = [
    LoanoneItemModel(
        loanOne: ImageConstant.imgLoan1,
        businessLoans: "Business loans",
        itisalongestablished: "It is a long established ",
        viewDetails: "View Details"),
    LoanoneItemModel(
        loanOne: ImageConstant.imgBriefcase1,
        businessLoans: "Checking accounts",
        itisalongestablished: "It is a long established ",
        viewDetails: "View Details"),
    LoanoneItemModel(
        loanOne: ImageConstant.imgGroup,
        businessLoans: "Savings accounts",
        itisalongestablished: "It is a long established ",
        viewDetails: "View Details"),
    LoanoneItemModel(
        loanOne: ImageConstant.imgUser32,
        businessLoans: "Debit and credit cards",
        itisalongestablished: "It is a long established ",
        viewDetails: "View Details"),
    LoanoneItemModel(
        loanOne: ImageConstant.imgShield1,
        businessLoans: "Life Insurance",
        itisalongestablished: "It is a long established ",
        viewDetails: "View Details"),
    LoanoneItemModel(
        loanOne: ImageConstant.imgLoan1,
        businessLoans: "Business loans",
        itisalongestablished: "It is a long established ",
        viewDetails: "View Details")
  ];
}
