import 'controller/account_five_controller.dart';
import 'models/account_five_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_image.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:movie_streaming_app/widgets/custom_elevated_button.dart';

class AccountFivePage extends StatelessWidget {
  AccountFivePage({Key? key})
      : super(
          key: key,
        );

  AccountFiveController controller =
      Get.put(AccountFiveController(AccountFiveModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        appBar: CustomAppBar(
          title: AppbarTitle(
            text: "lbl_account".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              svgPath: ImageConstant.imgSettingsOnprimary,
              margin: getMargin(
                left: 18,
                top: 20,
                right: 18,
                bottom: 17,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 1,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillOnPrimary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_notification".tr,
                            style: CustomTextStyles.bodyLargeBlack900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgNotificationicon,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 8,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillOnPrimary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_my_subscription".tr,
                            style: CustomTextStyles.bodyLargeBlack900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMysubscription,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 8,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillOnPrimary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_transaction_history".tr,
                            style: CustomTextStyles.bodyLargeBlack900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgTransactionhistory,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 8,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillOnPrimary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_profile_settings".tr,
                            style: CustomTextStyles.bodyLargeBlack900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgProfilesettings,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 8,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillOnPrimary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_watch_history".tr,
                            style: CustomTextStyles.bodyLargeBlack900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgWatchhistoryicon,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 8,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillOnPrimary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_following".tr,
                            style: CustomTextStyles.bodyLargeBlack900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFollowingicon,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 8,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillOnPrimary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_liked_movies".tr,
                            style: CustomTextStyles.bodyLargeBlack900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLikedmoviesicon,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    height: getVerticalSize(56),
                    text: "lbl_log_out".tr,
                    margin: getMargin(
                      left: 16,
                      top: 56,
                      right: 16,
                    ),
                    leftIcon: Container(
                      margin: getMargin(
                        right: 30,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgClockOnprimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
