
import 'package:get/get.dart';
import 'package:pak_programmer/module/project/controller/controler.dart';

class TeacherFindTutorsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ProjectListController>(
      () => ProjectListController());
  }

}