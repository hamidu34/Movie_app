import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.gray90001,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.gray90001,
                    gradient: LinearGradient(
                        begin: Alignment(0, 0),
                        end: Alignment(0, 1),
                        colors: [
                          theme.colorScheme.secondaryContainer,
                          appTheme.gray900
                        ]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSplashscreen),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 50, right: 50),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                              opacity: 0.87,
                              child: Padding(
                                  padding: getPadding(left: 29, top: 16),
                                  child: Text("lbl_get_started".tr,
                                      style: theme.textTheme.displaySmall))),
                          Opacity(
                              opacity: 0.87,
                              child: Container(
                                  width: getHorizontalSize(259),
                                  margin: getMargin(top: 15),
                                  child: Text("msg_watch_your_favourite".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.titleLarge_1)))
                        ])))));
  }
}
