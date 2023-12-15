import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/presentation/detail_page_eight_screen/models/detail_page_eight_model.dart';

/// A controller class for the DetailPageEightScreen.
///
/// This class manages the state of the DetailPageEightScreen, including the
/// current detailPageEightModelObj
class DetailPageEightController extends GetxController {
  Rx<DetailPageEightModel> detailPageEightModelObj = DetailPageEightModel().obs;
}
