part of 'product_view_model_cubit.dart';

@immutable
sealed class ProductViewModelState {}

final class ProductViewModelInitial extends ProductViewModelState {}
class ProductViewModeLoadingState extends ProductViewModelState{}
class ProductViewModeErrorState extends ProductViewModelState{
  String errorMessage;
  ProductViewModeErrorState(this.errorMessage);
}
class ProductViewModelSuccessState extends ProductViewModelState{
  List<ProductEntity> products;
  ProductViewModelSuccessState(this.products);
}


