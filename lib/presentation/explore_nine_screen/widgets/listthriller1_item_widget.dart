import '../controller/explore_nine_controller.dart';
import '../models/listthriller1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class Listthriller1ItemWidget extends StatelessWidget {
  Listthriller1ItemWidget(
    this.listthriller1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Listthriller1ItemModel listthriller1ItemModelObj;

  var controller = Get.find<ExploreNineController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(94),
      width: getHorizontalSize(89),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnailimage94x89,
            height: getVerticalSize(94),
            width: getHorizontalSize(89),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.87,
              child: Obx(
                () => Text(
                  listthriller1ItemModelObj.thrillertwoTxt.value,
                  style: CustomTextStyles.bodyMedium_2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
