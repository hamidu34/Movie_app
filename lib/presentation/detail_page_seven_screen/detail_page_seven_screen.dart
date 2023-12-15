import 'controller/detail_page_seven_controller.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_image.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_image_1.dart';
import 'package:movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:movie_streaming_app/widgets/custom_elevated_button.dart';
import 'package:movie_streaming_app/widgets/custom_icon_button.dart';

class DetailPageSevenScreen extends GetWidget<DetailPageSevenController> {
  const DetailPageSevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray90001,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(40),
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 16, bottom: 16),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgSearch,
                      margin:
                          getMargin(left: 18, top: 19, right: 18, bottom: 19))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 16),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgThumbnailimage24,
                                  height: getVerticalSize(133),
                                  width: getHorizontalSize(99),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(2)),
                                  alignment: Alignment.center),
                              Padding(
                                  padding:
                                      getPadding(left: 35, top: 14, right: 51),
                                  child: Row(children: [
                                    CustomElevatedButton(
                                        width: getHorizontalSize(136),
                                        text: "lbl_play_now".tr,
                                        leftIcon: Container(
                                            margin: getMargin(right: 7),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgPlay)),
                                        onTap: () {
                                          onTapPlaynow();
                                        }),
                                    CustomIconButton(
                                        height: getSize(38),
                                        width: getSize(38),
                                        margin: getMargin(left: 8),
                                        padding: getPadding(all: 12),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgShare)),
                                    CustomIconButton(
                                        height: getSize(38),
                                        width: getSize(38),
                                        margin: getMargin(left: 8),
                                        padding: getPadding(all: 12),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgUser)),
                                    CustomIconButton(
                                        height: getSize(38),
                                        width: getSize(38),
                                        margin: getMargin(left: 8),
                                        padding: getPadding(all: 12),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgComputer))
                                  ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                      opacity: 0.87,
                                      child: Padding(
                                          padding: getPadding(top: 40),
                                          child: Text("lbl_captain_marvel".tr,
                                              style: theme
                                                  .textTheme.headlineSmall)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 1),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Opacity(
                                                opacity: 0.87,
                                                child: Text("lbl_2019".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallOnPrimary)),
                                            Container(
                                                height: getSize(3),
                                                width: getSize(3),
                                                margin: getMargin(
                                                    left: 3, top: 7, bottom: 4),
                                                decoration: BoxDecoration(
                                                    color: theme
                                                        .colorScheme.onPrimary
                                                        .withOpacity(1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                1)))),
                                            Opacity(
                                                opacity: 0.87,
                                                child: Padding(
                                                    padding:
                                                        getPadding(left: 2),
                                                    child: Text("lbl_action".tr,
                                                        style: CustomTextStyles
                                                            .bodySmallOnPrimary))),
                                            Container(
                                                height: getSize(3),
                                                width: getSize(3),
                                                margin: getMargin(
                                                    left: 4, top: 7, bottom: 4),
                                                decoration: BoxDecoration(
                                                    color: theme
                                                        .colorScheme.onPrimary
                                                        .withOpacity(1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                1)))),
                                            Opacity(
                                                opacity: 0.87,
                                                child: Padding(
                                                    padding:
                                                        getPadding(left: 4),
                                                    child: Text(
                                                        "lbl_4_5"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: CustomTextStyles
                                                            .bodySmall10))),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgStar,
                                                height: getSize(6),
                                                width: getSize(6),
                                                margin: getMargin(
                                                    left: 5, top: 5, bottom: 3))
                                          ]))),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(top: 9),
                                      child: Text("lbl_1_hr_49min".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                      opacity: 0.87,
                                      child: Container(
                                          width: getHorizontalSize(321),
                                          margin: getMargin(
                                              left: 16, top: 29, right: 22),
                                          child: Text("msg_set_in_the_1990s".tr,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimary_2
                                                  .copyWith(height: 1.33))))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Opacity(
                                      opacity: 0.87,
                                      child: Padding(
                                          padding:
                                              getPadding(top: 1, right: 16),
                                          child: Text("lbl_more".tr,
                                              style: CustomTextStyles
                                                  .bodySmallDeeppurpleA200)))),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 1),
                                      child: Text("lbl_more_info".tr,
                                          style: theme.textTheme.bodyMedium))),
                              Padding(
                                  padding: getPadding(left: 16, top: 9),
                                  child: Row(children: [
                                    Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Text("lbl_director".tr,
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary))),
                                    Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                            padding: getPadding(left: 38),
                                            child: Text(
                                                "msg_anna_boden_ryan".tr,
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary_2)))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 10, right: 28),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Opacity(
                                            opacity: 0.87,
                                            child: Padding(
                                                padding: getPadding(bottom: 15),
                                                child: Text("lbl_cast".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallOnPrimary))),
                                        Expanded(
                                            child: Opacity(
                                                opacity: 0.87,
                                                child: Container(
                                                    width:
                                                        getHorizontalSize(231),
                                                    margin: getMargin(left: 57),
                                                    child: Text(
                                                        "msg_brie_larson_samuel"
                                                            .tr,
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: CustomTextStyles
                                                            .bodySmallOnPrimary_2
                                                            .copyWith(
                                                                height:
                                                                    1.33)))))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Divider()),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 28),
                                      child: Text("msg_you_might_also_like".tr,
                                          style: theme.textTheme.bodyMedium))),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(left: 16, top: 13),
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        Expanded(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapMoviecard1();
                                                  },
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgThumbnailimage188x120,
                                                            height:
                                                                getVerticalSize(
                                                                    188),
                                                            width:
                                                                getHorizontalSize(
                                                                    120),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        2))),
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 4),
                                                                child: Text(
                                                                    "lbl_io_netflix"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall))),
                                                        Opacity(
                                                            opacity: 0.6,
                                                            child: Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        120),
                                                                margin:
                                                                    getMargin(
                                                                        top: 2),
                                                                child: Text(
                                                                    "msg_in_near_future_we"
                                                                        .tr,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOnPrimary_1
                                                                        .copyWith(
                                                                            height:
                                                                                1.33))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(left: 16),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgThumbnailimage6,
                                                            height:
                                                                getVerticalSize(
                                                                    188),
                                                            width:
                                                                getHorizontalSize(
                                                                    120),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        2))),
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 4),
                                                                child: Text(
                                                                    "lbl_i_kill_giants"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall))),
                                                        Opacity(
                                                            opacity: 0.6,
                                                            child: Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        101),
                                                                margin:
                                                                    getMargin(
                                                                        top: 2),
                                                                child: Text(
                                                                    "msg_no_more_surrender"
                                                                        .tr,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOnPrimary_1
                                                                        .copyWith(
                                                                            height:
                                                                                1.33))))
                                                      ]))
                                            ])),
                                        Padding(
                                            padding: getPadding(left: 16),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgThumbnailimage8,
                                                      height:
                                                          getVerticalSize(188),
                                                      width: getHorizontalSize(
                                                          120),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  2))),
                                                  Opacity(
                                                      opacity: 0.87,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Text(
                                                              "msg_angel_has_fallen2"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall))),
                                                  Opacity(
                                                      opacity: 0.6,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  120),
                                                          margin:
                                                              getMargin(top: 1),
                                                          child: Text(
                                                              "msg_loyalty_under_everything"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: CustomTextStyles
                                                                  .bodySmallOnPrimary_1
                                                                  .copyWith(
                                                                      height:
                                                                          1.33))))
                                                ]))
                                      ])))
                            ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the channelFourScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the channelFourScreen.
  onTapPlaynow() {
    Get.toNamed(
      AppRoutes.channelFourScreen,
    );
  }

  /// Navigates to the detailPageNineScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the detailPageNineScreen.
  onTapMoviecard1() {
    Get.toNamed(
      AppRoutes.detailPageNineScreen,
    );
  }
}
