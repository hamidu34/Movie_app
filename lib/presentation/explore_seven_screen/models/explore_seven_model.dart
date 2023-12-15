import 'package:get/get.dart';
import 'listio_one1_item_model.dart';
import 'listtitle_one1_item_model.dart';
import 'listaction_item_model.dart';

/// This class defines the variables used in the [explore_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreSevenModel {
  Rx<List<ListioOne1ItemModel>> listioOne1ItemList =
      Rx(List.generate(3, (index) => ListioOne1ItemModel()));

  Rx<List<ListtitleOne1ItemModel>> listtitleOne1ItemList =
      Rx(List.generate(3, (index) => ListtitleOne1ItemModel()));

  Rx<List<ListactionItemModel>> listactionItemList =
      Rx(List.generate(3, (index) => ListactionItemModel()));
}
