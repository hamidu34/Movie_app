import '../see_more_seven_screen/widgets/see_more_seven_item_widget.dart';
import 'controller/see_more_seven_controller.dart';
import 'models/see_more_seven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_image_1.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_searchview.dart';
import 'package:movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class SeeMoreSevenScreen extends GetWidget<SeeMoreSevenController> {
  const SeeMoreSevenScreen({Key? key}) : super(key: key);

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
                    hintText: "msg_search_in_action".tr,
                    controller: controller.searchController)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 23, right: 15, bottom: 23),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Opacity(
                          opacity: 0.87,
                          child: Padding(
                              padding: getPadding(left: 1),
                              child: Text("lbl_trending_movies".tr,
                                  style: theme.textTheme.headlineSmall))),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 1, top: 12),
                              child: Obx(() => GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent: getVerticalSize(170),
                                          crossAxisCount: 3,
                                          mainAxisSpacing:
                                              getHorizontalSize(16),
                                          crossAxisSpacing:
                                              getHorizontalSize(16)),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.seeMoreSevenModelObj
                                      .value.seeMoreSevenItemList.value.length,
                                  itemBuilder: (context, index) {
                                    SeeMoreSevenItemModel model = controller
                                        .seeMoreSevenModelObj
                                        .value
                                        .seeMoreSevenItemList
                                        .value[index];
                                    return SeeMoreSevenItemWidget(model);
                                  }))))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
