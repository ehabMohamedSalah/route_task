import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:route_task/Domain/entity/product_entity.dart';
import 'package:route_task/Domain/repository_contract/Product_repo_contract.dart';

@injectable
class ProductUseCase {
  ProductRepoContract productrepo;
  @factoryMethod
  ProductUseCase(this.productrepo);

  Future<Either<List<ProductEntity>, String>> call() {
    return productrepo.GetProduct();
  }
}
