import '../../../core/app_export.dart';
import 'balance_item_model.dart';
import 'arrow_item_model.dart';

class TransactionsModel {
  List<BalanceItemModel> balanceItemList = [
    BalanceItemModel(
        balance: "Balance",
        price: "5,756",
        cardholder: "CARD HOLDER",
        eddyCusuma: "Eddy Cusuma",
        validthru: "VALID THRU",
        oneThousandTwoHundredTwentyTwo: "12/22",
        thirtySevenMillionSevenHundred: "3778 **** **** 1234"),
    BalanceItemModel(
        balance: "Balance",
        price: "5,756",
        cardholder: "CARD HOLDER",
        eddyCusuma: "Eddy Cusuma",
        validthru: "VALID THRU",
        oneThousandTwoHundredTwentyTwo: "12/22",
        thirtySevenMillionSevenHundred: "3778 **** **** 1234")
  ];

  List<ArrowItemModel> arrowItemList = [
    ArrowItemModel(
        arrow: ImageConstant.imgArrowGreen600,
        freepikSales: "Freepik Sales",
        time: "25 Jan, 10.40 PM",
        price: "+750"),
    ArrowItemModel(
        arrow: ImageConstant.imgArrow,
        freepikSales: "Mobile Service",
        time: "20 Jan, 10.40 PM",
        price: "-150"),
    ArrowItemModel(
        arrow: ImageConstant.imgArrow,
        freepikSales: "Wilson",
        time: "15 Jan, 03.29 PM",
        price: "-1050"),
    ArrowItemModel(
        arrow: ImageConstant.imgArrowGreen600,
        freepikSales: "Emilly",
        time: "14 Jan, 10.40 PM",
        price: "+840")
  ];
}
