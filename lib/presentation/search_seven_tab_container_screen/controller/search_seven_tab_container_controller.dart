import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/presentation/search_seven_tab_container_screen/models/search_seven_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchSevenTabContainerScreen.
///
/// This class manages the state of the SearchSevenTabContainerScreen, including the
/// current searchSevenTabContainerModelObj
class SearchSevenTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchboxoneController = TextEditingController();

  Rx<SearchSevenTabContainerModel> searchSevenTabContainerModelObj =
      SearchSevenTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));

  @override
  void onClose() {
    super.onClose();
    searchboxoneController.dispose();
  }
}
