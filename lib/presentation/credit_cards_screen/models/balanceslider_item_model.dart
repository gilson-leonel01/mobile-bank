import '../../../core/app_export.dart';

/// This class is used in the [balanceslider_item_widget] screen.
class BalancesliderItemModel {
  BalancesliderItemModel({
    this.balance,
    this.fiveThousandSevenHundredFiftyS,
    this.cardholder,
    this.eddyCusuma,
    this.validthru,
    this.oneThousandTwoHundredTwentyTwo,
    this.thirtySevenMillionSevenHundred,
    this.id,
  }) {
    balance = balance ?? "Balance";
    fiveThousandSevenHundredFiftyS = fiveThousandSevenHundredFiftyS ?? "5,756";
    cardholder = cardholder ?? "CARD HOLDER";
    eddyCusuma = eddyCusuma ?? "Eddy Cusuma";
    validthru = validthru ?? "VALID THRU";
    oneThousandTwoHundredTwentyTwo = oneThousandTwoHundredTwentyTwo ?? "12/22";
    thirtySevenMillionSevenHundred =
        thirtySevenMillionSevenHundred ?? "3778 **** **** 1234";
    id = id ?? "";
  }

  String? balance;

  String? fiveThousandSevenHundredFiftyS;

  String? cardholder;

  String? eddyCusuma;

  String? validthru;

  String? oneThousandTwoHundredTwentyTwo;

  String? thirtySevenMillionSevenHundred;

  String? id;
}
