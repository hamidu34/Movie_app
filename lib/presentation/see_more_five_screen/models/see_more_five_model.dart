import 'package:get/get.dart';
import 'see_more_five_item_model.dart';

/// This class defines the variables used in the [see_more_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeMoreFiveModel {
  Rx<List<SeeMoreFiveItemModel>> seeMoreFiveItemList =
      Rx(List.generate(9, (index) => SeeMoreFiveItemModel()));
}
