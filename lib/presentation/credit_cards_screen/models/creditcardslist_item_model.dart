import '../../../core/app_export.dart';

/// This class is used in the [creditcardslist_item_widget] screen.
class CreditcardslistItemModel {
  CreditcardslistItemModel({
    this.cardType,
    this.secondary,
    this.bank,
    this.dBLBank,
    this.viewDetails,
    this.id,
  }) {
    cardType = cardType ?? "Card Type";
    secondary = secondary ?? "Secondary";
    bank = bank ?? "Bank";
    dBLBank = dBLBank ?? "DBL Bank";
    viewDetails = viewDetails ?? "View Details";
    id = id ?? "";
  }

  String? cardType;

  String? secondary;

  String? bank;

  String? dBLBank;

  String? viewDetails;

  String? id;
}
