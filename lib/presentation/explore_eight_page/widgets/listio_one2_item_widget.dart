import '../controller/explore_eight_controller.dart';
import '../models/listio_one2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class ListioOne2ItemWidget extends StatelessWidget {
  ListioOne2ItemWidget(
    this.listioOne2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListioOne2ItemModel listioOne2ItemModelObj;

  var controller = Get.find<ExploreEightController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(120),
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbnailimage188x120,
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
                    listioOne2ItemModelObj.titleTxt.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
              Opacity(
                opacity: 0.87,
                child: Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Obx(
                    () => Text(
                      listioOne2ItemModelObj.subtitleTxt.value,
                      style: CustomTextStyles.bodySmallOnPrimary_3,
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
