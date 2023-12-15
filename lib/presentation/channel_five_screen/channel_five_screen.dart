import 'controller/channel_five_controller.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_image.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ChannelFiveScreen extends GetWidget<ChannelFiveController> {
  const ChannelFiveScreen({Key? key})
      : super(
          key: key,
        );

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
                                        svgPath: ImageConstant
                                            .imgSettingsOnprimary18x18,
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
                    child: Container(
                      width: getHorizontalSize(281),
                      margin: getMargin(
                        left: 16,
                        top: 16,
                        right: 62,
                      ),
                      child: Text(
                        "msg_the_last_black_man".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Opacity(
                      opacity: 0.87,
                      child: Container(
                        width: getHorizontalSize(319),
                        margin: getMargin(
                          left: 16,
                          top: 7,
                          right: 24,
                        ),
                        child: Text(
                          "msg_the_story_of_two".tr,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallOnPrimary_2.copyWith(
                            height: 1.33,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                    ),
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0.87,
                          child: Padding(
                            padding: getPadding(
                              bottom: 1,
                            ),
                            child: Text(
                              "lbl_director".tr,
                              style: CustomTextStyles.bodySmallOnPrimary,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.87,
                          child: Padding(
                            padding: getPadding(
                              left: 38,
                            ),
                            child: Text(
                              "msg_anna_boden_ryan".tr,
                              style: CustomTextStyles.bodySmallOnPrimary_2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 10,
                      right: 29,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.87,
                          child: Padding(
                            padding: getPadding(
                              bottom: 15,
                            ),
                            child: Text(
                              "lbl_cast".tr,
                              style: CustomTextStyles.bodySmallOnPrimary,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Opacity(
                            opacity: 0.87,
                            child: Container(
                              width: getHorizontalSize(230),
                              margin: getMargin(
                                left: 57,
                              ),
                              child: Text(
                                "msg_brie_larson_samuel".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallOnPrimary_2
                                    .copyWith(
                                  height: 1.33,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 17,
                        top: 25,
                        right: 17,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: 0.87,
                            child: Text(
                              "lbl_special_for_you".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          Spacer(),
                          Opacity(
                            opacity: 0.87,
                            child: Padding(
                              padding: getPadding(
                                bottom: 3,
                              ),
                              child: Text(
                                "lbl_more".tr,
                                style: CustomTextStyles.bodySmallOnPrimary,
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath:
                                ImageConstant.imgArrowrightDeepPurpleA20018x18,
                            height: getSize(18),
                            width: getSize(18),
                            margin: getMargin(
                              left: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      left: 16,
                      top: 16,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgThumbnailimage120x120,
                                      height: getSize(120),
                                      width: getSize(120),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(2),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.87,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Text(
                                          "lbl_title".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.87,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 3,
                                        ),
                                        child: Text(
                                          "lbl_sub_title".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary_3,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 16,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgThumbnailimage34,
                                        height: getSize(120),
                                        width: getSize(120),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(2),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 2,
                                          ),
                                          child: Text(
                                            "lbl_title".tr,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 3,
                                          ),
                                          child: Text(
                                            "lbl_sub_title".tr,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary_3,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbnailimage35,
                                  height: getSize(120),
                                  width: getSize(120),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(2),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Text(
                                      "lbl_title".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 3,
                                    ),
                                    child: Text(
                                      "lbl_sub_title".tr,
                                      style:
                                          CustomTextStyles.bodySmallOnPrimary_3,
                                    ),
                                  ),
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
          ),
        ),
      ),
    );
  }
}
