/*import '../network/network_info.dart';
/*import '/core/app_export.dart';
import '/data/apiClient/api_client.dart';
import 'pref_utils.dart';

class InitialBindings extends Bindings {
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
  
  Connectivity() {}
}*/

class Get {
  static void put(NetworkInfo networkInfo) {}
}

class Bindings {}*/
