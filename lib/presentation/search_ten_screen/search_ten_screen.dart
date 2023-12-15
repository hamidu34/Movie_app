import '../search_ten_screen/widgets/populars_item_widget.dart';
import 'controller/search_ten_controller.dart';
import 'models/populars_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchTenScreen extends GetWidget<SearchTenController> {
  const SearchTenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray90001,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 12,
            ),
            child: Padding(
              padding: getPadding(
                left: 15,
                right: 15,
                bottom: 150,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomSearchView(
                    controller: controller.searchController,
                    hintText: "msg_search_for_movies".tr,
                    hintStyle: CustomTextStyles.bodySmall_1,
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 7,
                        right: 12,
                        bottom: 7,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearch,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(32),
                    ),
                    contentPadding: getPadding(
                      left: 16,
                      top: 8,
                      bottom: 8,
                    ),
                    borderDecoration: SearchViewStyleHelper.fillBlackDd,
                    filled: true,
                    fillColor: appTheme.black900Dd,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 37,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgCursor,
                          height: getVerticalSize(10),
                          width: getHorizontalSize(18),
                          margin: getMargin(
                            top: 5,
                            bottom: 12,
                          ),
                        ),
                        Opacity(
                          opacity: 0.87,
                          child: Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Text(
                              "lbl_trending_search".tr,
                              style: theme.textTheme.headlineSmall,
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
                        top: 11,
                      ),
                      child: Text(
                        "lbl_love_in_trouble".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.87,
                    child: Padding(
                      padding: getPadding(
                        top: 19,
                      ),
                      child: Text(
                        "lbl_hotel_de_luna".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.87,
                    child: Padding(
                      padding: getPadding(
                        top: 19,
                      ),
                      child: Text(
                        "lbl_the_heirs".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.87,
                    child: Padding(
                      padding: getPadding(
                        top: 20,
                      ),
                      child: Text(
                        "msg_what_s_wrong_with".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 33,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgGlobe,
                          height: getSize(18),
                          width: getSize(18),
                          margin: getMargin(
                            top: 2,
                            bottom: 8,
                          ),
                        ),
                        Opacity(
                          opacity: 0.87,
                          child: Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Text(
                              "lbl_popular_search".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(180),
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
                        itemCount: controller.searchTenModelObj.value
                            .popularsItemList.value.length,
                        itemBuilder: (context, index) {
                          PopularsItemModel model = controller.searchTenModelObj
                              .value.popularsItemList.value[index];
                          return PopularsItemWidget(
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
