import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:route_task/core/api/api_manager.dart';
import 'package:route_task/core/api/endpoint.dart';
import 'package:route_task/data_layer/datasource_contract/product_datasource.dart';
import 'package:route_task/data_layer/model/product_response/ProductResponse.dart';
@Injectable(as:ProductDataSourceContract )
class ProductDataSourceImpl extends ProductDataSourceContract{
  ApiManager apiManager;
  @factoryMethod
  ProductDataSourceImpl(this.apiManager);
  @override
  Future<Either<ProductResponse, String>> GetProduct()async {
   try{
     var response = await apiManager.getRequest(Endpoint: Endpoints.Product);
     ProductResponse productResponse=ProductResponse.fromJson(response.data);
     return left(productResponse);
   }catch(error){
     return right(error.toString());
   }
  }

}