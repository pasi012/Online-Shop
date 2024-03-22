

abstract class AddressBaseEvent{}

class FetchAddressEvent extends AddressBaseEvent {

}

class RemoveAddressEvent extends AddressBaseEvent{
  String? id;
  RemoveAddressEvent(this.id);
}