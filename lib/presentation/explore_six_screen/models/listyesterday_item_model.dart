import 'package:get/get.dart';

/// This class is used in the [listyesterday_item_widget] screen.
class ListyesterdayItemModel {
  Rx<String> titleTxt = Rx("Yesterday");

  Rx<String> subtitleTxt = Rx("Everyone in the world has forgotten");

  Rx<String>? id = Rx("");
}
