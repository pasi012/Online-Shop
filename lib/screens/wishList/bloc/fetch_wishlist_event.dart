


abstract class WishListBaseEvent {}

class FetchWishListEvent extends WishListBaseEvent {
}

class OnClickWishListLoaderEvent extends WishListBaseEvent{
  final bool? isReqToShowLoader;
  OnClickWishListLoaderEvent({this.isReqToShowLoader});
}

class FetchDeleteAddItemEvent extends WishListBaseEvent{
  final dynamic productId;
  FetchDeleteAddItemEvent(this.productId);
}

class RemoveAllWishlistEvent extends WishListBaseEvent {
  final String? message;
  RemoveAllWishlistEvent( this.message);
  List<Object> get props => [ message ?? ""];

}

class AddToCartWishlistEvent extends WishListBaseEvent{
   final dynamic productId;

  AddToCartWishlistEvent(this.productId,);

}
