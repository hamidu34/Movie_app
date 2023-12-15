import 'controller/detail_page_twelve_controller.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_image.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_image_1.dart';
import 'package:movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class DetailPageTwelveScreen extends GetWidget<DetailPageTwelveController> {
  const DetailPageTwelveScreen({Key? key}) : super(key: key);

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
                    padding: getPadding(top: 2),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: getVerticalSize(220),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgFrame5,
                                            height: getVerticalSize(220),
                                            width: getHorizontalSize(360),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 12, bottom: 29),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Opacity(
                                                          opacity: 0.87,
                                                          child: Text(
                                                              "msg_the_edge_of_democracy"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineSmall)),
                                                      Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgPlay,
                                                            height:
                                                                getVerticalSize(
                                                                    25),
                                                            width:
                                                                getHorizontalSize(
                                                                    24)),
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10,
                                                                        top: 5,
                                                                        bottom:
                                                                            5),
                                                                child: Text(
                                                                    "lbl_2019"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOnPrimary))),
                                                        Container(
                                                            height: getSize(3),
                                                            width: getSize(3),
                                                            margin: getMargin(
                                                                left: 4,
                                                                top: 12,
                                                                bottom: 9),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimary
                                                                    .withOpacity(
                                                                        1),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(1)))),
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 4,
                                                                        top: 5,
                                                                        bottom:
                                                                            5),
                                                                child: Text(
                                                                    "lbl_action"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOnPrimary))),
                                                        Container(
                                                            height: getSize(3),
                                                            width: getSize(3),
                                                            margin: getMargin(
                                                                left: 4,
                                                                top: 12,
                                                                bottom: 9),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimary
                                                                    .withOpacity(
                                                                        1),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(1)))),
                                                        Opacity(
                                                            opacity: 0.87,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 6,
                                                                        top: 5,
                                                                        bottom:
                                                                            5),
                                                                child: Text(
                                                                    "lbl_4_5"
                                                                        .tr
                                                                        .toUpperCase(),
                                                                    style: CustomTextStyles
                                                                        .bodySmall10))),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgStar,
                                                            height: getSize(6),
                                                            width: getSize(6),
                                                            margin: getMargin(
                                                                left: 2,
                                                                top: 10,
                                                                bottom: 8))
                                                      ]),
                                                      Container(
                                                          margin: getMargin(
                                                              top: 15),
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 4,
                                                              right: 5,
                                                              bottom: 4),
                                                          decoration: AppDecoration
                                                              .fillPrimary
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder2),
                                                          child: Text(
                                                              "lbl_pg_13".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall))
                                                    ])))
                                      ])),
                              Divider(),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 17),
                                      child: Text("lbl_information".tr,
                                          style: theme.textTheme.bodyMedium))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                      opacity: 0.87,
                                      child: Container(
                                          width: getHorizontalSize(324),
                                          margin: getMargin(
                                              left: 16, top: 9, right: 19),
                                          child: Text(
                                              "msg_a_vision_of_brazil_s".tr,
                                              maxLines: 6,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimary_2
                                                  .copyWith(height: 1.33))))),
                              Padding(
                                  padding: getPadding(left: 16, top: 14),
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
                                      getPadding(left: 16, top: 10, right: 29),
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
                                                        getHorizontalSize(230),
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
                                  padding: getPadding(top: 16),
                                  child: Divider()),
                              Opacity(
                                  opacity: 0.87,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 20),
                                      child: Text("msg_you_might_also_like".tr,
                                          style: theme.textTheme.bodyMedium))),
                              Align(
                                  alignment: Alignment.center,
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      padding: getPadding(left: 16, top: 12),
                                      child: IntrinsicWidth(
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                            Expanded(
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
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
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgThumbnailimage1,
                                                                height:
                                                                    getVerticalSize(
                                                                        189),
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
                                                                            top:
                                                                                5),
                                                                    child: Text(
                                                                        "lbl_turner_hooch"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodySmall))),
                                                            Opacity(
                                                                opacity: 0.6,
                                                                child: Container(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            117),
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                2),
                                                                    child: Text(
                                                                        "msg_tom_hanks_returns"
                                                                            .tr,
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: CustomTextStyles
                                                                            .bodySmallOnPrimary_1
                                                                            .copyWith(height: 1.33))))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16, bottom: 14),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgThumbnailimage22,
                                                                height:
                                                                    getVerticalSize(
                                                                        189),
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
                                                                            top:
                                                                                5),
                                                                    child: Text(
                                                                        "lbl_helen"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodySmall))),
                                                            Opacity(
                                                                opacity: 0.6,
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                4),
                                                                    child: Text(
                                                                        "msg_based_on_true_story"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodySmallOnPrimary_1)))
                                                          ]))
                                                ])),
                                            Padding(
                                                padding: getPadding(left: 16),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgThumbnailimage21,
                                                          height:
                                                              getVerticalSize(
                                                                  189),
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
                                                                      top: 6),
                                                              child: Text(
                                                                  "lbl_eggnoid"
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
                                                              margin: getMargin(
                                                                  top: 1),
                                                              child: Text(
                                                                  "msg_the_heroes_within"
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
                                          ]))))
                            ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the detailPageEightScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the detailPageEightScreen.
  onTapMoviecard1() {
    Get.toNamed(
      AppRoutes.detailPageEightScreen,
    );
  }
}
