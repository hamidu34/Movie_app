import '../controller/explore_seven_controller.dart';
import '../models/listaction_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class ListactionItemWidget extends StatelessWidget {
  ListactionItemWidget(
    this.listactionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListactionItemModel listactionItemModelObj;

  var controller = Get.find<ExploreSevenController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Opacity(
          opacity: 0.87,
          child: Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Obx(
              () => Text(
                listactionItemModelObj.actionTxt.value,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
        ),
        Spacer(),
        Opacity(
          opacity: 0.87,
          child: Padding(
            padding: getPadding(
              bottom: 3,
            ),
            child: Obx(
              () => Text(
                listactionItemModelObj.moreTxt.value,
                style: CustomTextStyles.bodySmallOnPrimary,
              ),
            ),
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgArrowright,
          height: getVerticalSize(16),
          width: getHorizontalSize(18),
          margin: getMargin(
            left: 4,
            bottom: 3,
          ),
        ),
      ],
    );
  }
}
