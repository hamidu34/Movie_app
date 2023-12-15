import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/presentation/channel_six_page/models/channel_six_model.dart';

/// A controller class for the ChannelSixPage.
///
/// This class manages the state of the ChannelSixPage, including the
/// current channelSixModelObj
class ChannelSixController extends GetxController {
  ChannelSixController(this.channelSixModelObj);

  Rx<ChannelSixModel> channelSixModelObj;
}
