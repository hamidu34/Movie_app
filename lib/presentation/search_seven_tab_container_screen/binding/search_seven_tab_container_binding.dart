import '../controller/search_seven_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchSevenTabContainerScreen.
///
/// This class ensures that the SearchSevenTabContainerController is created when the
/// SearchSevenTabContainerScreen is first loaded.
class SearchSevenTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchSevenTabContainerController());
  }
}
