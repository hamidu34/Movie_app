import '../controller/explore_seven_controller.dart';
import '../models/listtitle_one1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class ListtitleOne1ItemWidget extends StatelessWidget {
  ListtitleOne1ItemWidget(
    this.listtitleOne1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListtitleOne1ItemModel listtitleOne1ItemModelObj;

  var controller = Get.find<ExploreSevenController>();

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
                  listtitleOne1ItemModelObj.titletwoTxt.value,
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
                    listtitleOne1ItemModelObj.subtitleTxt.value,
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
