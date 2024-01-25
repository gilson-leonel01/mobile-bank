import '../../../core/app_export.dart';
import 'balanceslider_item_model.dart';
import 'creditcardslist_item_model.dart';

class CreditCardsModel {
  List<BalancesliderItemModel> balancesliderItemList = [
    BalancesliderItemModel(
        balance: "Balance",
        fiveThousandSevenHundredFiftyS: "5,756",
        cardholder: "CARD HOLDER",
        eddyCusuma: "Eddy Cusuma",
        validthru: "VALID THRU",
        oneThousandTwoHundredTwentyTwo: "12/22",
        thirtySevenMillionSevenHundred: "3778 **** **** 1234"),
    BalancesliderItemModel(
        balance: "Balance",
        fiveThousandSevenHundredFiftyS: "5,756",
        cardholder: "CARD HOLDER",
        eddyCusuma: "Eddy Cusuma",
        validthru: "VALID THRU",
        oneThousandTwoHundredTwentyTwo: "12/22",
        thirtySevenMillionSevenHundred: "3778 **** **** 1234")
  ];

  List<CreditcardslistItemModel> creditcardslistItemList = [
    CreditcardslistItemModel(
        cardType: "Card Type",
        secondary: "Secondary",
        bank: "Bank",
        dBLBank: "DBL Bank",
        viewDetails: "View Details"),
    CreditcardslistItemModel(
        cardType: "Card Type",
        secondary: "Secondary",
        bank: "Bank",
        dBLBank: "BRC Bank",
        viewDetails: "View Details"),
    CreditcardslistItemModel(
        cardType: "Card Type",
        secondary: "Secondary",
        bank: "Bank",
        dBLBank: "ABM Bank",
        viewDetails: "View Details")
  ];
}
