import 'package:dashboadblack/login/controller/login.controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static final Inject instance = Inject._();

  Inject._();

  Future<void> init() async {
    GetIt.I.registerFactory<LoginController>(() => LoginController());
  }
}
