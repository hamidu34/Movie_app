import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/presentation/search_seven_page/models/search_seven_model.dart';

/// A controller class for the SearchSevenPage.
///
/// This class manages the state of the SearchSevenPage, including the
/// current searchSevenModelObj
class SearchSevenController extends GetxController {
  SearchSevenController(this.searchSevenModelObj);

  Rx<SearchSevenModel> searchSevenModelObj;
}
