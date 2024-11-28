import '../utils/images.dart';

List<ProviderServicesModel> providerServices = getProviderServices();

class ProviderServicesModel {
  String serviceImage;
  String serviceName;
  int servicePrice;

  ProviderServicesModel(this.serviceImage, this.serviceName, this.servicePrice);
}

List<ProviderServicesModel> getProviderServices() {
  List<ProviderServicesModel> list = [];
  list.add(ProviderServicesModel(sofa, "Pembersihkan Sofa", 750));
  list.add(ProviderServicesModel(kitchen, "Pembersihkan Dapur", 1000));
  list.add(ProviderServicesModel(bathroom, "Pembersihkan Kamar Mandi", 1250));
  list.add(ProviderServicesModel(carpet, "Pembersihkan Karpet", 750));
  list.add(ProviderServicesModel(home, "Pembersihkan Full House", 1000));
  return list;
}
