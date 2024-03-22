

abstract class AddEditAddressBaseEvent {}
class AddressCountryEvent extends AddEditAddressBaseEvent {}

class FetchAddAddressEvent extends AddEditAddressBaseEvent {
  final  String? address ;
  final  String? city;
  final  String? country;
  final  String? firstName;
  final  String? lastName;
  final  String? vatId;
  final String? phone;
  final   String? postCode;
  final String? state;
  final   String? companyName;
  final   bool? isDefault;

  FetchAddAddressEvent({this.isDefault,this.address,this.city,this.country,this.firstName,this.phone,this.postCode,this.state,this.companyName,this.lastName,this.vatId});
}

class FetchEditAddressEvent extends AddEditAddressBaseEvent {
  final  int? addressId;
  final  String? address ;
  final  String? city;
  final  String? country;
  final  String? firstName;
  final  String? lastName;
  final  String? vatId;
  final String? phone;
  final   String? postCode;
  final String? state;
  final   String? companyName;
  final   bool ?isDefault;
  FetchEditAddressEvent({this.isDefault,this.addressId,this.address,this.city,this.country,this.firstName,this.phone,this.postCode,this.state,this.companyName,this.lastName,this.vatId});
}