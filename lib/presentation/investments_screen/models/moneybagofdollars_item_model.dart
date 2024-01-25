import '../../../core/app_export.dart';

/// This class is used in the [moneybagofdollars_item_widget] screen.
class MoneybagofdollarsItemModel {
  MoneybagofdollarsItemModel({
    this.moneyBagOfDollars,
    this.totalInvestedAmount,
    this.price,
    this.id,
  }) {
    moneyBagOfDollars = moneyBagOfDollars ?? ImageConstant.imgMoneyBagOfDollars;
    totalInvestedAmount = totalInvestedAmount ?? "Total Invested Amount";
    price = price ?? "150,000";
    id = id ?? "";
  }

  String? moneyBagOfDollars;

  String? totalInvestedAmount;

  String? price;

  String? id;
}
