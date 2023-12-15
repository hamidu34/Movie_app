import 'package:get/get.dart';
import 'listthe_item_model.dart';
import 'listtitle_item_model.dart';
import 'listi_kill_item_model.dart';
import 'listlukas_one_item_model.dart';
import 'categories_item_model.dart';
import 'list_item_model.dart';

/// This class defines the variables used in the [dashboard_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardContainerModel {
  Rx<List<ListtheItemModel>> listtheItemList =
      Rx(List.generate(4, (index) => ListtheItemModel()));

  Rx<List<ListtitleItemModel>> listtitleItemList =
      Rx(List.generate(4, (index) => ListtitleItemModel()));

  Rx<List<ListiKillItemModel>> listiKillItemList =
      Rx(List.generate(4, (index) => ListiKillItemModel()));

  Rx<List<ListlukasOneItemModel>> listlukasOneItemList =
      Rx(List.generate(4, (index) => ListlukasOneItemModel()));

  Rx<List<CategoriesItemModel>> categoriesItemList =
      Rx(List.generate(4, (index) => CategoriesItemModel()));

  Rx<List<ListItemModel>> listItemList =
      Rx(List.generate(4, (index) => ListItemModel()));
}
