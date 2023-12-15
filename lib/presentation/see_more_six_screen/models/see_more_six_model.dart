import 'package:get/get.dart';
import 'see_more_six_item_model.dart';

/// This class defines the variables used in the [see_more_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeMoreSixModel {
  Rx<List<SeeMoreSixItemModel>> seeMoreSixItemList =
      Rx(List.generate(12, (index) => SeeMoreSixItemModel()));
}
