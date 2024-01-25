import '../../../core/app_export.dart';
import 'accountsgrid_item_model.dart';

class AccountsModel {
  List<AccountsgridItemModel> accountsgridItemList = [
    AccountsgridItemModel(
        moneyTagOne: ImageConstant.imgMoneyTag1,
        myBalance: "My Balance",
        price: "12,750"),
    AccountsgridItemModel(
        moneyTagOne: ImageConstant.imgGroup747,
        myBalance: "Income",
        price: "5,600"),
    AccountsgridItemModel(
        moneyTagOne: ImageConstant.img001Medical,
        myBalance: "Expense",
        price: "3,460"),
    AccountsgridItemModel(
        moneyTagOne: ImageConstant.img003Saving,
        myBalance: "Total Saving",
        price: "7,920")
  ];
}
