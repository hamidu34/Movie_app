import '../controller/see_more_eight_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SeeMoreEightScreen.
///
/// This class ensures that the SeeMoreEightController is created when the
/// SeeMoreEightScreen is first loaded.
class SeeMoreEightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeeMoreEightController());
  }
}
