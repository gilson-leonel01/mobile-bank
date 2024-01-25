import 'models/setting_edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/core/utils/validation_functions.dart';
import 'package:mobile_bank/widgets/custom_elevated_button.dart';
import 'package:mobile_bank/widgets/custom_icon_button.dart';
import 'package:mobile_bank/widgets/custom_text_form_field.dart';
import 'provider/setting_edit_profile_provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SettingEditProfilePage extends StatefulWidget {
  const SettingEditProfilePage({Key? key}) : super(key: key);

  @override
  SettingEditProfilePageState createState() => SettingEditProfilePageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SettingEditProfileProvider(),
        child: SettingEditProfilePage());
  }
}

// ignore_for_file: must_be_immutable
class SettingEditProfilePageState extends State<SettingEditProfilePage>
    with AutomaticKeepAliveClientMixin<SettingEditProfilePage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<SettingEditProfileProvider>(context, listen: false)
          .callFetchMe(
        onError: () {
          _onFetchMeEventError();
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 25.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(children: [
                        SizedBox(
                            height: 170.v,
                            width: 174.h,
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse28,
                                      height: 170.adaptSize,
                                      width: 170.adaptSize,
                                      radius: BorderRadius.circular(85.h),
                                      alignment: Alignment.center,
                                      onTap: () {
                                        onTapImgCircleImage(context);
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 20.v),
                                      child: CustomIconButton(
                                          height: 38.adaptSize,
                                          width: 38.adaptSize,
                                          padding: EdgeInsets.all(9.h),
                                          decoration:
                                              IconButtonStyleHelper.fillPrimary,
                                          alignment: Alignment.bottomRight,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPencilAlt1)))
                                ])),
                        SizedBox(height: 23.v),
                        _buildInputField7(context),
                        SizedBox(height: 18.v),
                        _buildInputField9(context),
                        SizedBox(height: 17.v),
                        _buildInputField6(context),
                        SizedBox(height: 18.v),
                        _buildInputField10(context),
                        SizedBox(height: 17.v),
                        _buildInputField2(context,
                            cardType: "lbl_date_of_birth".tr,
                            zipcode: "lbl_25_january_1990".tr),
                        SizedBox(height: 17.v),
                        _buildInputField11(context),
                        SizedBox(height: 18.v),
                        _buildInputField4(context),
                        SizedBox(height: 19.v),
                        _buildInputField8(context),
                        SizedBox(height: 17.v),
                        _buildInputField2(context,
                            cardType: "lbl_postal_code".tr,
                            zipcode: "lbl_45962".tr),
                        SizedBox(height: 19.v),
                        _buildInputField12(context),
                        SizedBox(height: 20.v),
                        CustomElevatedButton(
                            height: 40.v,
                            text: "lbl_save".tr,
                            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOnPrimary)
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildInputField7(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_your_name".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      Selector<SettingEditProfileProvider, TextEditingController?>(
          selector: (context, provider) => provider.nameController,
          builder: (context, nameController, child) {
            return CustomTextFormField(
                controller: nameController, hintText: "lbl_charlene_reed".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField9(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_user_name".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      Selector<SettingEditProfileProvider, TextEditingController?>(
          selector: (context, provider) => provider.userNameController,
          builder: (context, userNameController, child) {
            return CustomTextFormField(
                controller: userNameController,
                hintText: "lbl_charlene_reed".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField6(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      Selector<SettingEditProfileProvider, TextEditingController?>(
          selector: (context, provider) => provider.emailController,
          builder: (context, emailController, child) {
            return CustomTextFormField(
                controller: emailController, hintText: "lbl_user_gmail_com".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField10(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      Selector<SettingEditProfileProvider, TextEditingController?>(
          selector: (context, provider) => provider.passwordController,
          builder: (context, passwordController, child) {
            return CustomTextFormField(
                controller: passwordController,
                hintText: "lbl".tr,
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: true);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField11(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_present_address".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      Selector<SettingEditProfileProvider, TextEditingController?>(
          selector: (context, provider) => provider.addressController,
          builder: (context, addressController, child) {
            return CustomTextFormField(
                controller: addressController,
                hintText: "msg_san_jose_california".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField4(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_permanent_address".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      Selector<SettingEditProfileProvider, TextEditingController?>(
          selector: (context, provider) => provider.addressController1,
          builder: (context, addressController1, child) {
            return CustomTextFormField(
                controller: addressController1,
                hintText: "msg_san_jose_california".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField8(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_city".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 7.v),
      Selector<SettingEditProfileProvider, TextEditingController?>(
          selector: (context, provider) => provider.cityController,
          builder: (context, cityController, child) {
            return CustomTextFormField(
                controller: cityController, hintText: "lbl_san_jose".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField12(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_country".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 7.v),
      Selector<SettingEditProfileProvider, TextEditingController?>(
          selector: (context, provider) => provider.countryController,
          builder: (context, countryController, child) {
            return CustomTextFormField(
                controller: countryController,
                hintText: "lbl_usa".tr,
                textInputAction: TextInputAction.done);
          })
    ]);
  }

  /// Common widget
  Widget _buildInputField2(
    BuildContext context, {
    required String cardType,
    required String zipcode,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(cardType,
          style: theme.textTheme.bodySmall!
              .copyWith(color: appTheme.blueGray40001)),
      SizedBox(height: 8.v),
      Container(
          width: 287.h,
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 11.v),
          decoration: AppDecoration.outlineTeal
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
          child: Text(zipcode,
              style: CustomTextStyles.bodySmallBluegray900
                  .copyWith(color: appTheme.blueGray900)))
    ]);
  }

  /// Displays a toast message using the FlutterToast library.
  void _onFetchMeEventError() {
    Fluttertoast.showToast(
        msg: Provider.of<SettingEditProfileProvider>(context, listen: false)
                .getMeResp
                .message ??
            ''.toString() ??
            '');
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onTapImgCircleImage(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
