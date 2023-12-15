import '../controller/explore_six_controller.dart';
import '../models/listyesterday_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class ListyesterdayItemWidget extends StatelessWidget {
  ListyesterdayItemWidget(
    this.listyesterdayItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListyesterdayItemModel listyesterdayItemModelObj;

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
            imagePath: ImageConstant.imgThumbnailimage27,
            height: getVerticalSize(125),
            width: getHorizontalSize(120),
            radius: BorderRadius.circular(
              getHorizontalSize(2),
            ),
          ),
          Opacity(
            opacity: 0.87,
            child: Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Obx(
                () => Text(
                  listyesterdayItemModelObj.titleTxt.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.87,
            child: Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Obx(
                () => Text(
                  listyesterdayItemModelObj.subtitleTxt.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallOnPrimary_3.copyWith(
                    height: 1.33,
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
