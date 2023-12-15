import 'package:get/get.dart';
import 'channel_four_item_model.dart';

/// This class defines the variables used in the [channel_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChannelFourModel {
  Rx<List<ChannelFourItemModel>> channelFourItemList =
      Rx(List.generate(4, (index) => ChannelFourItemModel()));
}
