import '../explore_seven_screen/widgets/listaction_item_widget.dart';
import '../explore_seven_screen/widgets/listio_one1_item_widget.dart';
import '../explore_seven_screen/widgets/listtitle_one1_item_widget.dart';
import 'controller/explore_seven_controller.dart';
import 'models/listaction_item_model.dart';
import 'models/listio_one1_item_model.dart';
import 'models/listtitle_one1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_image.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ExploreSevenScreen extends GetWidget<ExploreSevenController> {
  const ExploreSevenScreen({Key? key})
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
              top: 11,
            ),
            child: Padding(
              padding: getPadding(
                left: 12,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.87,
                    child: Text(
                      "msg_categories_you_like".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      top: 25,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: getVerticalSize(94),
                            width: getHorizontalSize(89),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgThumbnailimage94x89,
                                  height: getVerticalSize(94),
                                  width: getHorizontalSize(89),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                    opacity: 0.87,
                                    child: Text(
                                      "lbl_thriller".tr,
                                      style: CustomTextStyles.bodyMedium_2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(94),
                            width: getHorizontalSize(89),
                            margin: getMargin(
                              left: 9,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbnailimage30,
                                  height: getVerticalSize(94),
                                  width: getHorizontalSize(89),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                    opacity: 0.87,
                                    child: Text(
                                      "lbl_action".tr,
                                      style: CustomTextStyles.bodyMedium_2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(94),
                            width: getHorizontalSize(89),
                            margin: getMargin(
                              left: 9,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbnailimage31,
                                  height: getVerticalSize(94),
                                  width: getHorizontalSize(89),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                    opacity: 0.87,
                                    child: Text(
                                      "lbl_drama".tr,
                                      style: CustomTextStyles.bodyMedium_2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(94),
                            width: getHorizontalSize(89),
                            margin: getMargin(
                              left: 9,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbnailimage32,
                                  height: getVerticalSize(94),
                                  width: getHorizontalSize(89),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                    opacity: 0.87,
                                    child: Text(
                                      "lbl_label".tr,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodyMedium_2,
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
                  Padding(
                    padding: getPadding(
                      top: 25,
                      right: 20,
                    ),
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0.87,
                          child: Padding(
                            padding: getPadding(
                              bottom: 2,
                            ),
                            child: Text(
                              "lbl_drama".tr,
                              style: theme.textTheme.titleSmall,
                            ),
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
                          svgPath: ImageConstant.imgArrowright,
                          height: getSize(18),
                          width: getSize(18),
                          margin: getMargin(
                            left: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: getVerticalSize(199),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            top: 25,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              width: getHorizontalSize(16),
                            );
                          },
                          itemCount: controller.exploreSevenModelObj.value
                              .listioOne1ItemList.value.length,
                          itemBuilder: (context, index) {
                            ListioOne1ItemModel model = controller
                                .exploreSevenModelObj
                                .value
                                .listioOne1ItemList
                                .value[index];
                            return ListioOne1ItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: getVerticalSize(170),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            top: 11,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              width: getHorizontalSize(16),
                            );
                          },
                          itemCount: controller.exploreSevenModelObj.value
                              .listtitleOne1ItemList.value.length,
                          itemBuilder: (context, index) {
                            ListtitleOne1ItemModel model = controller
                                .exploreSevenModelObj
                                .value
                                .listtitleOne1ItemList
                                .value[index];
                            return ListtitleOne1ItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 40,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: getVerticalSize(21),
                          );
                        },
                        itemCount: controller.exploreSevenModelObj.value
                            .listactionItemList.value.length,
                        itemBuilder: (context, index) {
                          ListactionItemModel model = controller
                              .exploreSevenModelObj
                              .value
                              .listactionItemList
                              .value[index];
                          return ListactionItemWidget(
                            model,
                          );
                        },
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
