import '../controller/search_nine_controller.dart';
import '../models/search_nine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class SearchNineItemWidget extends StatelessWidget {
  SearchNineItemWidget(
    this.searchNineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchNineItemModel searchNineItemModelObj;

  var controller = Get.find<SearchNineController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgThumbnailimage17,
          height: getVerticalSize(139),
          width: getHorizontalSize(99),
          radius: BorderRadius.circular(
            getHorizontalSize(2),
          ),
        ),
        CustomRatingBar(
          margin: getMargin(
            left: 2,
            top: 6,
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
            child: Obx(
              () => Text(
                searchNineItemModelObj.titleTxt.value,
                style: CustomTextStyles.bodySmall_1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
