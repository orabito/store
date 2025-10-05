
import 'package:chatat/core/resources/env.variables.dart';
import 'package:flutter/material.dart';

class AsrooStoreApp  extends StatelessWidget {
  const AsrooStoreApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariables.instance.envType,
      home: Scaffold(

        appBar: AppBar(
          title:Text("AsrooStoreApp ") ,
        ),
      ),
    );
  }
}
