import 'package:get/get.dart';
import 'see_more_eight_item_model.dart';

/// This class defines the variables used in the [see_more_eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeMoreEightModel {
  Rx<List<SeeMoreEightItemModel>> seeMoreEightItemList =
      Rx(List.generate(12, (index) => SeeMoreEightItemModel()));
}
