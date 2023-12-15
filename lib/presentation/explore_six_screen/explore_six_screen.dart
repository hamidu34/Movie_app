import '../explore_six_screen/widgets/listio_one_item_widget.dart';
import '../explore_six_screen/widgets/listtitle_one_item_widget.dart';
import '../explore_six_screen/widgets/listturner_item_widget.dart';
import '../explore_six_screen/widgets/listyesterday_item_widget.dart';
import 'controller/explore_six_controller.dart';
import 'models/listio_one_item_model.dart';
import 'models/listtitle_one_item_model.dart';
import 'models/listturner_item_model.dart';
import 'models/listyesterday_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_image_1.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_searchview.dart';
import 'package:movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class ExploreSixScreen extends GetWidget<ExploreSixController> {
  const ExploreSixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray90001,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: getHorizontalSize(40),
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarSearchview(
                    margin: getMargin(left: 20),
                    hintText: "lbl_search_movies".tr,
                    controller: controller.searchController)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 40),
                    child: Padding(
                        padding: getPadding(left: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Opacity(
                                  opacity: 0.87,
                                  child: Text("lbl_explore_movies".tr,
                                      style:
                                          CustomTextStyles.headlineSmallBold)),
                              Opacity(
                                  opacity: 0.87,
                                  child: Text("msg_find_something_you".tr,
                                      style: CustomTextStyles
                                          .bodyMediumOnPrimary)),
                              Padding(
                                  padding: getPadding(top: 14, right: 16),
                                  child: Row(children: [
                                    Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                            padding: getPadding(top: 2),
                                            child: Text("lbl_action".tr,
                                                style: theme
                                                    .textTheme.titleSmall))),
                                    Spacer(),
                                    Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                            padding: getPadding(bottom: 3),
                                            child: Text("lbl_more".tr,
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(16),
                                        width: getHorizontalSize(18),
                                        margin: getMargin(left: 4, bottom: 3))
                                  ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(top: 13),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                height: getVerticalSize(159),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        padding:
                                                            getPadding(left: 3),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              width:
                                                                  getHorizontalSize(
                                                                      16));
                                                        },
                                                        itemCount: controller
                                                            .exploreSixModelObj
                                                            .value
                                                            .listturnerItemList
                                                            .value
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          ListturnerItemModel
                                                              model = controller
                                                                  .exploreSixModelObj
                                                                  .value
                                                                  .listturnerItemList
                                                                  .value[index];
                                                          return ListturnerItemWidget(
                                                              model);
                                                        }))),
                                            SizedBox(
                                                height: getVerticalSize(202),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        padding: getPadding(
                                                            left: 3,
                                                            top: 26,
                                                            right: 48),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              width:
                                                                  getHorizontalSize(
                                                                      16));
                                                        },
                                                        itemCount: controller
                                                            .exploreSixModelObj
                                                            .value
                                                            .listyesterdayItemList
                                                            .value
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          ListyesterdayItemModel
                                                              model = controller
                                                                  .exploreSixModelObj
                                                                  .value
                                                                  .listyesterdayItemList
                                                                  .value[index];
                                                          return ListyesterdayItemWidget(
                                                              model);
                                                        })))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 18, right: 16),
                                  child: Row(children: [
                                    Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                            padding: getPadding(bottom: 2),
                                            child: Text("lbl_drama".tr,
                                                style: theme
                                                    .textTheme.titleSmall))),
                                    Spacer(),
                                    Opacity(
                                        opacity: 0.87,
                                        child: Padding(
                                            padding: getPadding(bottom: 3),
                                            child: Text("lbl_more".tr,
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(18),
                                        width: getSize(18),
                                        margin: getMargin(left: 4))
                                  ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(top: 13),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                height: getVerticalSize(174),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              width:
                                                                  getHorizontalSize(
                                                                      16));
                                                        },
                                                        itemCount: controller
                                                            .exploreSixModelObj
                                                            .value
                                                            .listioOneItemList
                                                            .value
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          ListioOneItemModel
                                                              model = controller
                                                                  .exploreSixModelObj
                                                                  .value
                                                                  .listioOneItemList
                                                                  .value[index];
                                                          return ListioOneItemWidget(
                                                              model);
                                                        }))),
                                            SizedBox(
                                                height: getVerticalSize(170),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        padding:
                                                            getPadding(top: 11),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              width:
                                                                  getHorizontalSize(
                                                                      16));
                                                        },
                                                        itemCount: controller
                                                            .exploreSixModelObj
                                                            .value
                                                            .listtitleOneItemList
                                                            .value
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          ListtitleOneItemModel
                                                              model = controller
                                                                  .exploreSixModelObj
                                                                  .value
                                                                  .listtitleOneItemList
                                                                  .value[index];
                                                          return ListtitleOneItemWidget(
                                                              model);
                                                        })))
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
}
