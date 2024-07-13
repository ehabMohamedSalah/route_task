import 'package:dartz/dartz.dart';
import 'package:route_task/Domain/entity/product_entity.dart';

abstract class ProductRepoContract{
  Future<Either<List<ProductEntity>,String>>GetProduct();
}