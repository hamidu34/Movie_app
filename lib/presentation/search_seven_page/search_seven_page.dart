import 'controller/search_seven_controller.dart';
import 'models/search_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/custom_elevated_button.dart';

class SearchSevenPage extends StatelessWidget {
  SearchSevenPage({Key? key})
      : super(
          key: key,
        );

  SearchSevenController controller =
      Get.put(SearchSevenController(SearchSevenModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 30,
                      right: 252,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.87,
                          child: Text(
                            "lbl_categories_1".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Container(
                          height: getSize(90),
                          width: getSize(90),
                          margin: getMargin(
                            top: 16,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgThumbnailimage90x90,
                                height: getSize(90),
                                width: getSize(90),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(2),
                                ),
                                alignment: Alignment.center,
                              ),
                              CustomElevatedButton(
                                height: getVerticalSize(90),
                                width: getHorizontalSize(90),
                                text: "lbl_love".tr,
                                buttonStyle: CustomButtonStyles.fillGray,
                                buttonTextStyle: CustomTextStyles.bodyMedium_2,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
