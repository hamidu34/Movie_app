import 'package:get/get.dart';
import 'search_nine_item_model.dart';

/// This class defines the variables used in the [search_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchNineModel {
  Rx<List<SearchNineItemModel>> searchNineItemList =
      Rx(List.generate(9, (index) => SearchNineItemModel()));
}
