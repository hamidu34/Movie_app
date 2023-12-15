import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/presentation/search_nine_screen/models/search_nine_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchNineScreen.
///
/// This class manages the state of the SearchNineScreen, including the
/// current searchNineModelObj
class SearchNineController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchNineModel> searchNineModelObj = SearchNineModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
