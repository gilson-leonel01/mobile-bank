import '../../../core/app_export.dart';

/// This class is used in the [arrow_item_widget] screen.
class ArrowItemModel {
  ArrowItemModel({
    this.arrow,
    this.freepikSales,
    this.time,
    this.price,
    this.id,
  }) {
    arrow = arrow ?? ImageConstant.imgArrowGreen600;
    freepikSales = freepikSales ?? "Freepik Sales";
    time = time ?? "25 Jan, 10.40 PM";
    price = price ?? "+750";
    id = id ?? "";
  }

  String? arrow;

  String? freepikSales;

  String? time;

  String? price;

  String? id;
}
