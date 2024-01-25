import '../../../core/app_export.dart';

/// This class is used in the [lifeinsurancefilled_item_widget] screen.
class LifeinsurancefilledItemModel {
  LifeinsurancefilledItemModel({
    this.lifeInsuranceFilled,
    this.lifeInsurance,
    this.unlimitedProtection,
    this.id,
  }) {
    lifeInsuranceFilled =
        lifeInsuranceFilled ?? ImageConstant.imgLifeInsuranceFilled;
    lifeInsurance = lifeInsurance ?? "Life Insurance";
    unlimitedProtection = unlimitedProtection ?? "Unlimited protection";
    id = id ?? "";
  }

  String? lifeInsuranceFilled;

  String? lifeInsurance;

  String? unlimitedProtection;

  String? id;
}
