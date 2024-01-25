import '../../../core/app_export.dart';
import 'moneybagofdollars_item_model.dart';
import 'applestore_item_model.dart';

class InvestmentsModel {
  List<MoneybagofdollarsItemModel> moneybagofdollarsItemList = [
    MoneybagofdollarsItemModel(
        moneyBagOfDollars: ImageConstant.imgMoneyBagOfDollars,
        totalInvestedAmount: "Total Invested Amount",
        price: "150,000"),
    MoneybagofdollarsItemModel(
        moneyBagOfDollars: ImageConstant.imgPieChart1,
        totalInvestedAmount: "Number of Investments",
        price: "1,250"),
    MoneybagofdollarsItemModel(
        moneyBagOfDollars: ImageConstant.imgRepeat1,
        totalInvestedAmount: "Rate of Return",
        price: "+5.80%")
  ];

  List<ApplestoreItemModel> applestoreItemList = [
    ApplestoreItemModel(
        image: ImageConstant.imgClose,
        appleStore: "Apple Store",
        ecommerceMarketplace: "E-commerce, Marketplace",
        sixteen: "+16%"),
    ApplestoreItemModel(
        image: ImageConstant.imgFloatingIcon,
        appleStore: "Tesla Motors",
        ecommerceMarketplace: "Electric Vehicles",
        sixteen: "+25%"),
    ApplestoreItemModel(
        appleStore: "Samsung Mobile",
        ecommerceMarketplace: "E-commerce, Marketplace",
        sixteen: "-4%")
  ];
}
