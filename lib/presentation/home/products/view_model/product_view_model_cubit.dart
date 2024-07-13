import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../Domain/entity/product_entity.dart';
import '../../../../Domain/usecase/product_usecase.dart';

part 'product_view_model_state.dart';
@injectable
class ProductViewModel extends Cubit<ProductViewModelState> {
  ProductUseCase productUseCase;
  @factoryMethod
  ProductViewModel(this.productUseCase) : super(ProductViewModelInitial());

  GetProduct()async{
    emit(ProductViewModeLoadingState());
    var response=await productUseCase.call();
    response.fold(
            (products) => emit(ProductViewModelSuccessState(products)),
            (errors) => emit(ProductViewModeErrorState(errors)));
  }

}
