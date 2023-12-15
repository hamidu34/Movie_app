import 'package:get/get.dart';

/// This class is used in the [listaction_item_widget] screen.
class ListactionItemModel {
  Rx<String> actionTxt = Rx("Action");

  Rx<String> moreTxt = Rx("More");

  Rx<String>? id = Rx("");
}
