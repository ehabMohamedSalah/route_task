import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:route_task/Domain/entity/product_entity.dart';
import 'package:route_task/Domain/repository_contract/Product_repo_contract.dart';

import '../datasource_contract/product_datasource.dart';

@Injectable(as:ProductRepoContract )
class ProductRepoImpl extends ProductRepoContract{
  ProductDataSourceContract apiDataSource;
  @factoryMethod
  ProductRepoImpl(this.apiDataSource);
  @override
  Future<Either<List<ProductEntity>, String>> GetProduct() async{
  var response=  await apiDataSource.GetProduct();
  return response.fold(
          (result) {
             List<ProductEntity> productEntity=result.products?.map((item) => item.toProductEntity()).toList()??[];
             return left(productEntity);
          },
          (error) {
            return right(error);
      });
  }

}