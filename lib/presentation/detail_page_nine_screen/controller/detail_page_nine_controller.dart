import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/presentation/detail_page_nine_screen/models/detail_page_nine_model.dart';

/// A controller class for the DetailPageNineScreen.
///
/// This class manages the state of the DetailPageNineScreen, including the
/// current detailPageNineModelObj
class DetailPageNineController extends GetxController {
  Rx<DetailPageNineModel> detailPageNineModelObj = DetailPageNineModel().obs;
}
