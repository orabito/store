import 'package:flutter_dotenv/flutter_dotenv.dart';
enum EnvTypeEnum{dev,pro}
class EnvVariables {
String _envType="";
 EnvVariables._();
 static final EnvVariables instance=EnvVariables._();
 Future<void> init({required EnvTypeEnum envType}) async {
   switch (envType){
     case EnvTypeEnum.dev:
       await  dotenv.load(fileName:".env.dev" );
       break;
       case EnvTypeEnum.pro:
       await  dotenv.load(fileName:".env.pro" );
       break;

   }

_envType=dotenv.get("env_type");


 }
 bool get envType =>_envType=="dev";

}