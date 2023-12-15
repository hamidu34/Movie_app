import 'controller/channel_six_controller.dart';
import 'models/channel_six_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_image.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class ChannelSixPage extends StatelessWidget {
  ChannelSixPage({Key? key})
      : super(
          key: key,
        );

  ChannelSixController controller =
      Get.put(ChannelSixController(ChannelSixModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        appBar: CustomAppBar(
          title: AppbarTitle(
            text: "lbl_live_channel".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              svgPath: ImageConstant.imgAirplayicon,
              margin: getMargin(
                left: 19,
                top: 19,
                right: 20,
              ),
            ),
            AppbarImage(
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 26,
                top: 19,
                right: 39,
              ),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 8,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getVerticalSize(180),
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgThumbnailimage180x360,
                          height: getVerticalSize(180),
                          width: getHorizontalSize(360),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 8,
                              right: 8,
                              bottom: 8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgPlay,
                                  height: getSize(36),
                                  width: getSize(36),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 46,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgTrash,
                                        height: getSize(18),
                                        width: getSize(18),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgSettings,
                                        height: getSize(18),
                                        width: getSize(18),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                          bottom: 7,
                                        ),
                                        child: Container(
                                          height: getVerticalSize(4),
                                          width: getHorizontalSize(240),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary
                                                .withOpacity(1),
                                          ),
                                          child: ClipRRect(
                                            child: LinearProgressIndicator(
                                              value: 0.57,
                                              backgroundColor: theme
                                                  .colorScheme.onPrimary
                                                  .withOpacity(1),
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                appTheme.deepPurpleA200,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgSettingsOnprimary,
                                        height: getSize(18),
                                        width: getSize(18),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgSettings18x18,
                                        height: getSize(18),
                                        width: getSize(18),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: 0.87,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 8,
                      ),
                      child: Text(
                        "lbl_schedule".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 26,
                    ),
                    child: Text(
                      "msg_last_time_we_meet".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 6,
                    ),
                    child: Text(
                      "lbl_02_00_am_est".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 13,
                    ),
                    child: Divider(
                      color: theme.colorScheme.onPrimary.withOpacity(0.08),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 18,
                    ),
                    child: Text(
                      "lbl_love_you_more".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 6,
                    ),
                    child: Text(
                      "lbl_04_00_am_est".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 13,
                    ),
                    child: Divider(
                      color: theme.colorScheme.onPrimary.withOpacity(0.08),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 21,
                    ),
                    child: Text(
                      "lbl_pain".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 6,
                    ),
                    child: Text(
                      "lbl_05_00_am_est".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 13,
                    ),
                    child: Divider(
                      color: theme.colorScheme.onPrimary.withOpacity(0.08),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 25,
                    ),
                    child: Text(
                      "msg_i_don_t_think_so".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 6,
                    ),
                    child: Text(
                      "lbl_06_00_am_est".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 13,
                    ),
                    child: Divider(
                      color: theme.colorScheme.onPrimary.withOpacity(0.08),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 21,
                    ),
                    child: Text(
                      "lbl_war".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 6,
                    ),
                    child: Text(
                      "lbl_08_00_am_est".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 13,
                    ),
                    child: Divider(
                      color: theme.colorScheme.onPrimary.withOpacity(0.08),
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
