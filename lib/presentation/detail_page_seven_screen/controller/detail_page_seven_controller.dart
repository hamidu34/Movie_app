import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/presentation/detail_page_seven_screen/models/detail_page_seven_model.dart';

/// A controller class for the DetailPageSevenScreen.
///
/// This class manages the state of the DetailPageSevenScreen, including the
/// current detailPageSevenModelObj
class DetailPageSevenController extends GetxController {
  Rx<DetailPageSevenModel> detailPageSevenModelObj = DetailPageSevenModel().obs;
}
