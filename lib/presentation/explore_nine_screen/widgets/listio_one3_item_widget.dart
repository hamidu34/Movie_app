import '../controller/explore_nine_controller.dart';
import '../models/listio_one3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class ListioOne3ItemWidget extends StatelessWidget {
  ListioOne3ItemWidget(
    this.listioOne3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListioOne3ItemModel listioOne3ItemModelObj;

  var controller = Get.find<ExploreNineController>();

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
                    listioOne3ItemModelObj.titleTxt.value,
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
                      listioOne3ItemModelObj.subtitleTxt.value,
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
