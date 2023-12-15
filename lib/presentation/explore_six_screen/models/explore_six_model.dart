import 'package:get/get.dart';
import 'listturner_item_model.dart';
import 'listyesterday_item_model.dart';
import 'listio_one_item_model.dart';
import 'listtitle_one_item_model.dart';

/// This class defines the variables used in the [explore_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreSixModel {
  Rx<List<ListturnerItemModel>> listturnerItemList =
      Rx(List.generate(3, (index) => ListturnerItemModel()));

  Rx<List<ListyesterdayItemModel>> listyesterdayItemList =
      Rx(List.generate(3, (index) => ListyesterdayItemModel()));

  Rx<List<ListioOneItemModel>> listioOneItemList =
      Rx(List.generate(3, (index) => ListioOneItemModel()));

  Rx<List<ListtitleOneItemModel>> listtitleOneItemList =
      Rx(List.generate(3, (index) => ListtitleOneItemModel()));
}
