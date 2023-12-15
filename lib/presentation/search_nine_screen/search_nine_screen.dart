import '../search_nine_screen/widgets/search_nine_item_widget.dart';
import 'controller/search_nine_controller.dart';
import 'models/search_nine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_image.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:movie_streaming_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchNineScreen extends GetWidget<SearchNineController> {
  const SearchNineScreen({Key? key})
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
        appBar: CustomAppBar(
          height: getVerticalSize(53),
          title: AppbarTitle(
            text: "lbl_search".tr,
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
                right: 17,
              ),
            ),
            AppbarImage(
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 26,
                top: 19,
                right: 36,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 14,
            right: 16,
            bottom: 14,
          ),
          child: Column(
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
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 3,
                    top: 48,
                  ),
                  child: Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(170),
                        crossAxisCount: 3,
                        mainAxisSpacing: getHorizontalSize(14),
                        crossAxisSpacing: getHorizontalSize(14),
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: controller.searchNineModelObj.value
                          .searchNineItemList.value.length,
                      itemBuilder: (context, index) {
                        SearchNineItemModel model = controller
                            .searchNineModelObj
                            .value
                            .searchNineItemList
                            .value[index];
                        return SearchNineItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
