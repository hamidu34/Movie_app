import 'controller/search_eight_controller.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_image.dart';
import 'package:movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:movie_streaming_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchEightScreen extends GetWidget<SearchEightController> {
  const SearchEightScreen({Key? key})
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
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 14,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomSearchView(
                    margin: getMargin(
                      left: 16,
                      right: 16,
                    ),
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
                      top: 12,
                    ),
                    child: Divider(),
                  ),
                  Opacity(
                    opacity: 0.87,
                    child: Padding(
                      padding: getPadding(
                        top: 25,
                      ),
                      child: Text(
                        "lbl_trending_search".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 18,
                    ),
                    child: Divider(),
                  ),
                  Opacity(
                    opacity: 0.87,
                    child: Padding(
                      padding: getPadding(
                        top: 17,
                      ),
                      child: Text(
                        "lbl_treasure_island".tr,
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
                  Opacity(
                    opacity: 0.87,
                    child: Padding(
                      padding: getPadding(
                        top: 19,
                      ),
                      child: Text(
                        "lbl_moby_dick".tr,
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
                        "lbl_bullet_boy".tr,
                        style: theme.textTheme.bodyMedium,
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
