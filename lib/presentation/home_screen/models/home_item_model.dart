import '../../../core/app_export.dart';

/// This class is used in the [home_item_widget] screen.
class HomeItemModel {
  HomeItemModel({
    this.balance,
    this.price,
    this.cardholder,
    this.eddyCusuma,
    this.validthru,
    this.oneThousandTwoHundredTwentyTwo,
    this.thirtySevenMillionSevenHundred,
    this.id,
  }) {
    balance = balance ?? "Balance";
    price = price ?? "5,756";
    cardholder = cardholder ?? "CARD HOLDER";
    eddyCusuma = eddyCusuma ?? "Eddy Cusuma";
    validthru = validthru ?? "VALID THRU";
    oneThousandTwoHundredTwentyTwo = oneThousandTwoHundredTwentyTwo ?? "12/22";
    thirtySevenMillionSevenHundred =
        thirtySevenMillionSevenHundred ?? "3778 **** **** 1234";
    id = id ?? "";
  }

  String? balance;

  String? price;

  String? cardholder;

  String? eddyCusuma;

  String? validthru;

  String? oneThousandTwoHundredTwentyTwo;

  String? thirtySevenMillionSevenHundred;

  String? id;
}
