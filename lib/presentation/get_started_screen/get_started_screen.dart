import 'models/get_started_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/custom_elevated_button.dart';
import 'package:mobile_bank/widgets/custom_outlined_button.dart';
import 'provider/get_started_provider.dart';
import 'package:mobile_bank/domain/googleauth/google_auth_helper.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  GetStartedScreenState createState() => GetStartedScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => GetStartedProvider(), child: GetStartedScreen());
  }
}

class GetStartedScreenState extends State<GetStartedScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 16.h, top: 123.v, right: 16.h),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_lets_get_started".tr,
                          style: theme.textTheme.headlineMedium)),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                          width: 220.h,
                          child: Text("msg_find_the_right_and".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleSmallBluegray40001
                                  .copyWith(height: 1.50)))),
                  SizedBox(height: 21.v),
                  _buildLoginButton(context),
                  SizedBox(height: 16.v),
                  _buildRegisterButton(context),
                  SizedBox(height: 26.v),
                  Text("msg_or_use_instant_sign".tr,
                      style: CustomTextStyles.labelLargeBluegray400),
                  SizedBox(height: 24.v),
                  _buildSignWithGoogleButton(context),
                  SizedBox(height: 24.v),
                  _buildSignWithAppleButton(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_login".tr,
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_register".tr,
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        onPressed: () {
          onTapRegisterButton(context);
        });
  }

  /// Section Widget
  Widget _buildSignWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 50.v,
        text: "msg_sign_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 32.adaptSize,
                width: 32.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGray,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray40001,
        onPressed: () {
          onTapSignWithGoogleButton(context);
        });
  }

  /// Section Widget
  Widget _buildSignWithAppleButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 50.v,
        text: "lbl_sign_with_apple".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 32.adaptSize,
                width: 32.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGray,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray40001);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the registersScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registersScreen,
    );
  }

  onTapSignWithGoogleButton(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
