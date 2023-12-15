import 'package:get/get.dart';
import 'gridghost_item_model.dart';

/// This class defines the variables used in the [search_seven_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchSevenTabContainerModel {
  Rx<List<GridghostItemModel>> gridghostItemList =
      Rx(List.generate(6, (index) => GridghostItemModel()));
}
