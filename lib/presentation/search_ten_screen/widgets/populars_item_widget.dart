import '../controller/search_ten_controller.dart';
import '../models/populars_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class PopularsItemWidget extends StatelessWidget {
  PopularsItemWidget(
    this.popularsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PopularsItemModel popularsItemModelObj;

  var controller = Get.find<SearchTenController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(99),
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
              top: 12,
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
