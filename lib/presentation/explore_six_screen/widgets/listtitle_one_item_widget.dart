import '../controller/explore_six_controller.dart';
import '../models/listtitle_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class ListtitleOneItemWidget extends StatelessWidget {
  ListtitleOneItemWidget(
    this.listtitleOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListtitleOneItemModel listtitleOneItemModelObj;

  var controller = Get.find<ExploreSixController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnailimage11,
            height: getVerticalSize(125),
            width: getHorizontalSize(120),
            radius: BorderRadius.circular(
              getHorizontalSize(2),
            ),
          ),
          Opacity(
            opacity: 0.87,
            child: Obx(
              () => Text(
                listtitleOneItemModelObj.titletwoTxt.value,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          Opacity(
            opacity: 0.87,
            child: Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Obx(
                () => Text(
                  listtitleOneItemModelObj.subtitleTxt.value,
                  style: CustomTextStyles.bodySmallOnPrimary_3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
