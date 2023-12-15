import 'package:get/get.dart';
import 'listthriller1_item_model.dart';
import 'listio_one3_item_model.dart';
import 'listtitle_one3_item_model.dart';

/// This class defines the variables used in the [explore_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreNineModel {
  Rx<List<Listthriller1ItemModel>> listthriller1ItemList =
      Rx(List.generate(4, (index) => Listthriller1ItemModel()));

  Rx<List<ListioOne3ItemModel>> listioOne3ItemList =
      Rx(List.generate(3, (index) => ListioOne3ItemModel()));

  Rx<List<ListtitleOne3ItemModel>> listtitleOne3ItemList =
      Rx(List.generate(3, (index) => ListtitleOne3ItemModel()));
}
