import '../controller/dashboard_container1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DashboardContainer1Screen.
///
/// This class ensures that the DashboardContainer1Controller is created when the
/// DashboardContainer1Screen is first loaded.
class DashboardContainer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardContainer1Controller());
  }
}
