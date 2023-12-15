import '../controller/see_more_six_controller.dart';
import '../models/see_more_six_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class SeeMoreSixItemWidget extends StatelessWidget {
  SeeMoreSixItemWidget(
    this.seeMoreSixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeeMoreSixItemModel seeMoreSixItemModelObj;

  var controller = Get.find<SeeMoreSixController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(175),
      width: getHorizontalSize(99),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnailimage16,
            height: getVerticalSize(175),
            width: getHorizontalSize(99),
            radius: BorderRadius.circular(
              getHorizontalSize(2),
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Opacity(
              opacity: 0.87,
              child: Padding(
                padding: getPadding(
                  bottom: 16,
                ),
                child: Obx(
                  () => Text(
                    seeMoreSixItemModelObj.titleTxt.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
