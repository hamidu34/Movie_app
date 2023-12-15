import 'controller/explore_ten_controller.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_image.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ExploreTenScreen extends GetWidget<ExploreTenController> {
  const ExploreTenScreen({Key? key})
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
            text: "lbl_explore".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              svgPath: ImageConstant.imgTrophy,
              margin: getMargin(
                left: 18,
                top: 18,
                right: 19,
              ),
            ),
            AppbarImage(
              svgPath: ImageConstant.imgLock,
              margin: getMargin(
                left: 24,
                top: 18,
                right: 37,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 30,
            ),
            child: Padding(
              padding: getPadding(
                left: 16,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.87,
                    child: Text(
                      "lbl_trending_movies".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      top: 16,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbnailimage11,
                                  height: getVerticalSize(160),
                                  width: getHorizontalSize(312),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(2),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 11,
                                  ),
                                  child: Text(
                                    "lbl_dark_phoenix".tr,
                                    style: CustomTextStyles.bodyLarge_1,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Opacity(
                                        opacity: 0.6,
                                        child: Text(
                                          "lbl_sub_label".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary_4,
                                        ),
                                      ),
                                      Container(
                                        height: getSize(3),
                                        width: getSize(3),
                                        margin: getMargin(
                                          left: 8,
                                          top: 7,
                                          bottom: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.onPrimary
                                              .withOpacity(1),
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(1),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 4,
                                            top: 2,
                                          ),
                                          child: Text(
                                            "lbl_4_5".tr.toUpperCase(),
                                            style: CustomTextStyles.bodySmall10,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgStar,
                                        height: getSize(6),
                                        width: getSize(6),
                                        margin: getMargin(
                                          left: 2,
                                          top: 5,
                                          bottom: 3,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                left: 16,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgThumbnailimage160x312,
                                    height: getVerticalSize(160),
                                    width: getHorizontalSize(312),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(2),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 11,
                                    ),
                                    child: Text(
                                      "lbl_label".tr,
                                      style: CustomTextStyles.bodyLarge_1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 7,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Opacity(
                                          opacity: 0.6,
                                          child: Text(
                                            "lbl_sub_label".tr,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary_4,
                                          ),
                                        ),
                                        Container(
                                          height: getSize(3),
                                          width: getSize(3),
                                          margin: getMargin(
                                            left: 8,
                                            top: 8,
                                            bottom: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary
                                                .withOpacity(1),
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(1),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.87,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 4,
                                            ),
                                            child: Text(
                                              "lbl_4_5".tr.toUpperCase(),
                                              style:
                                                  CustomTextStyles.bodySmall10,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgStar,
                                          height: getSize(6),
                                          width: getSize(6),
                                          margin: getMargin(
                                            left: 2,
                                            top: 6,
                                            bottom: 4,
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
                  Opacity(
                    opacity: 0.87,
                    child: Padding(
                      padding: getPadding(
                        top: 33,
                      ),
                      child: Text(
                        "lbl_trending_movies".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      top: 16,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgThumbnailimage143x90,
                                  height: getVerticalSize(160),
                                  width: getHorizontalSize(312),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(2),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 11,
                                  ),
                                  child: Text(
                                    "lbl_radioflash2".tr,
                                    style: CustomTextStyles.bodyLarge_1,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Opacity(
                                        opacity: 0.6,
                                        child: Text(
                                          "lbl_sub_label".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary_4,
                                        ),
                                      ),
                                      Container(
                                        height: getSize(3),
                                        width: getSize(3),
                                        margin: getMargin(
                                          left: 8,
                                          top: 7,
                                          bottom: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.onPrimary
                                              .withOpacity(1),
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(1),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 4,
                                            top: 2,
                                          ),
                                          child: Text(
                                            "lbl_4_5".tr.toUpperCase(),
                                            style: CustomTextStyles.bodySmall10,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgStar,
                                        height: getSize(6),
                                        width: getSize(6),
                                        margin: getMargin(
                                          left: 2,
                                          top: 5,
                                          bottom: 3,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                left: 16,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgThumbnailimage160x312,
                                    height: getVerticalSize(160),
                                    width: getHorizontalSize(312),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(2),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 11,
                                    ),
                                    child: Text(
                                      "lbl_label".tr,
                                      style: CustomTextStyles.bodyLarge_1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 7,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Opacity(
                                          opacity: 0.6,
                                          child: Text(
                                            "lbl_sub_label".tr,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary_4,
                                          ),
                                        ),
                                        Container(
                                          height: getSize(3),
                                          width: getSize(3),
                                          margin: getMargin(
                                            left: 8,
                                            top: 8,
                                            bottom: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary
                                                .withOpacity(1),
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(1),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.87,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 4,
                                            ),
                                            child: Text(
                                              "lbl_4_5".tr.toUpperCase(),
                                              style:
                                                  CustomTextStyles.bodySmall10,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgStar,
                                          height: getSize(6),
                                          width: getSize(6),
                                          margin: getMargin(
                                            left: 2,
                                            top: 6,
                                            bottom: 4,
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
                  Opacity(
                    opacity: 0.87,
                    child: Padding(
                      padding: getPadding(
                        top: 33,
                      ),
                      child: Text(
                        "lbl_trending_movies".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      top: 16,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbnailimage27,
                                  height: getVerticalSize(160),
                                  width: getHorizontalSize(312),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(2),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 13,
                                  ),
                                  child: Text(
                                    "lbl_yesterday".tr,
                                    style: CustomTextStyles.bodyLarge_1,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Row(
                                    children: [
                                      Opacity(
                                        opacity: 0.6,
                                        child: Text(
                                          "lbl_everyone".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary_4,
                                        ),
                                      ),
                                      Container(
                                        height: getSize(3),
                                        width: getSize(3),
                                        margin: getMargin(
                                          left: 12,
                                          top: 6,
                                          bottom: 5,
                                        ),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.onPrimary
                                              .withOpacity(1),
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(1),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 4,
                                            bottom: 2,
                                          ),
                                          child: Text(
                                            "lbl_4_5".tr.toUpperCase(),
                                            style: CustomTextStyles.bodySmall10,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgStar,
                                        height: getSize(6),
                                        width: getSize(6),
                                        margin: getMargin(
                                          left: 2,
                                          top: 4,
                                          bottom: 4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                left: 16,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgThumbnailimage160x312,
                                    height: getVerticalSize(160),
                                    width: getHorizontalSize(312),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(2),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 11,
                                    ),
                                    child: Text(
                                      "lbl_label".tr,
                                      style: CustomTextStyles.bodyLarge_1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 7,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Opacity(
                                          opacity: 0.6,
                                          child: Text(
                                            "lbl_sub_label".tr,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary_4,
                                          ),
                                        ),
                                        Container(
                                          height: getSize(3),
                                          width: getSize(3),
                                          margin: getMargin(
                                            left: 8,
                                            top: 8,
                                            bottom: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary
                                                .withOpacity(1),
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(1),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.87,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 4,
                                            ),
                                            child: Text(
                                              "lbl_4_5".tr.toUpperCase(),
                                              style:
                                                  CustomTextStyles.bodySmall10,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgStar,
                                          height: getSize(6),
                                          width: getSize(6),
                                          margin: getMargin(
                                            left: 2,
                                            top: 6,
                                            bottom: 4,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
