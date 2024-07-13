import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../constant.dart';

@singleton
class ApiManager{
  static late Dio dio;
  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: Constant.baseUrl,
          validateStatus: (status){
            if(status!<500){
              return true;
            }
            return false;
          }
      ),);
  }
  Future< Response > getRequest({ required String Endpoint,  Map<String, dynamic>? queryParameters, Map<String, dynamic>? headers})async{
    var response=await dio.get( Endpoint,queryParameters: queryParameters,options: Options(
      headers: headers,
    ));
    return response;
  }
}