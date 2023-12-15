import '../controller/explore_nine_controller.dart';
import '../models/listtitle_one3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class ListtitleOne3ItemWidget extends StatelessWidget {
  ListtitleOne3ItemWidget(
    this.listtitleOne3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListtitleOne3ItemModel listtitleOne3ItemModelObj;

  var controller = Get.find<ExploreNineController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(120),
      child: Align(
        alignment: Alignment.centerRight,
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
                  listtitleOne3ItemModelObj.titletwoTxt.value,
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
                    listtitleOne3ItemModelObj.subtitleTxt.value,
                    style: CustomTextStyles.bodySmallOnPrimary_3,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
