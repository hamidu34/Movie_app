import 'package:get/get.dart';
import 'listthriller_item_model.dart';
import 'listio_one2_item_model.dart';
import 'listtitle_one2_item_model.dart';

/// This class defines the variables used in the [explore_eight_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreEightModel {
  Rx<List<ListthrillerItemModel>> listthrillerItemList =
      Rx(List.generate(4, (index) => ListthrillerItemModel()));

  Rx<List<ListioOne2ItemModel>> listioOne2ItemList =
      Rx(List.generate(3, (index) => ListioOne2ItemModel()));

  Rx<List<ListtitleOne2ItemModel>> listtitleOne2ItemList =
      Rx(List.generate(3, (index) => ListtitleOne2ItemModel()));
}
