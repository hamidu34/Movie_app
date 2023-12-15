import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/presentation/search_ten_screen/models/search_ten_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchTenScreen.
///
/// This class manages the state of the SearchTenScreen, including the
/// current searchTenModelObj
class SearchTenController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchTenModel> searchTenModelObj = SearchTenModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
