import 'package:chatat/core/resources/env.variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'AsrooStoreApp.dart';

Future<void> main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.init(envType: EnvTypeEnum.pro);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
      (_){
        runApp(const AsrooStoreApp());
      }
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

}


