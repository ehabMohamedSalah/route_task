import 'package:dartz/dartz.dart';
import 'package:route_task/data_layer/model/product_response/ProductResponse.dart';

abstract class ProductDataSourceContract{
  Future<Either<ProductResponse,String>>GetProduct();

}