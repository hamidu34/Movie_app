import '../controller/search_seven_tab_container_controller.dart';
import '../models/gridghost_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class GridghostItemWidget extends StatelessWidget {
  GridghostItemWidget(
    this.gridghostItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GridghostItemModel gridghostItemModelObj;

  var controller = Get.find<SearchSevenTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnailimage17,
            height: getVerticalSize(133),
            width: getHorizontalSize(99),
            radius: BorderRadius.circular(
              getHorizontalSize(2),
            ),
          ),
          CustomRatingBar(
            margin: getMargin(
              left: 2,
              top: 13,
            ),
            ignoreGestures: true,
            initialRating: 0,
            itemCount: 1,
          ),
          Opacity(
            opacity: 0.87,
            child: Padding(
              padding: getPadding(
                left: 2,
              ),
              child: Text(
                "lbl_ghost_writer".tr,
                style: CustomTextStyles.bodySmall_1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
