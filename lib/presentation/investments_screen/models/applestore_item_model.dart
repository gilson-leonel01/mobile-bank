import '../../../core/app_export.dart';

/// This class is used in the [applestore_item_widget] screen.
class ApplestoreItemModel {
  ApplestoreItemModel({
    this.image,
    this.appleStore,
    this.ecommerceMarketplace,
    this.sixteen,
    this.id,
  }) {
    image = image ?? ImageConstant.imgClose;
    appleStore = appleStore ?? "Apple Store";
    ecommerceMarketplace = ecommerceMarketplace ?? "E-commerce, Marketplace";
    sixteen = sixteen ?? "+16%";
    id = id ?? "";
  }

  String? image;

  String? appleStore;

  String? ecommerceMarketplace;

  String? sixteen;

  String? id;
}
