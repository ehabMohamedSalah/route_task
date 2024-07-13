import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/api/api_manager.dart';
import 'core/di/di.dart';
import 'core/myobserver.dart';
import 'myapp.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();//law fe ay haga future m3molha await lazm tkhls abl mdkhol 3ala al runapp
  Bloc.observer = MyBlocObserver();
  ApiManager.init();
  configureDependencies();
   runApp(  MyApp());
}
