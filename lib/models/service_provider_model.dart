import 'package:home_hub/models/provider_services_model.dart';
import 'package:home_hub/models/services_model.dart';
import 'package:home_hub/utils/images.dart';

List<ServiceProviderModel> likedProviders = getLikedServices();

class ServiceProviderModel {
  int id;
  String name;
  String providerImage;
  String occupation;
  String star;
  String detailDescription;
  String jobs;
  String perHourPrice;
  bool isLiked;
  List<ProviderServicesModel> providerServices;

  ServiceProviderModel(
      this.id,
      this.name,
      this.providerImage,
      this.occupation,
      this.star,
      this.detailDescription,
      this.jobs,
      this.perHourPrice,
      this.isLiked,
      this.providerServices);
}

List<ServiceProviderModel> getPlumbers() {
  List<ServiceProviderModel> list = List.empty(growable: true);
  list.add(ServiceProviderModel(
    0,
    "Wawan Budiman",
    plumber,
    "Tukang Ledeng",
    "3.5",
    "Tukang ledeng memasang dan memperbaiki sistem perpipaan di properti hunian dan komersial. Mereka juga memasang perlengkapan dan peralatan rumah tangga yang berhubungan dengan sistem pemanas, pendingin, dan sanitasi. Tukang ledeng memasang dan memperbaiki sistem perpipaan di properti hunian dan komersial.",
    "120",
    "330",
    false,
    getProviderServices(),
  ));
  list.add(ServiceProviderModel(
      0,
      "Dedi Suryadi",
      homeCleaner,
      "Tenaga Kebersihan",
      "3.5",
      "Hi",
      "120",
      "350",
      false,
      getProviderServices()));
  list.add(ServiceProviderModel(0, "Joko Suparjo", plumber, "Tukang Ledeng",
      "4.5", "Hi", "120", "250", false, getProviderServices()));
  list.add(ServiceProviderModel(
      0,
      "Suprapto Wijoyo",
      electrician,
      "Tukang Listrik",
      "4.0",
      "Hi",
      "120",
      "310",
      false,
      getProviderServices()));
  return list;
}

List<ServiceProviderModel> getElectricians() {
  List<ServiceProviderModel> list = List.empty(growable: true);
  list.add(ServiceProviderModel(
      1,
      "Wawan Budiman",
      electrician,
      "Tukang Listrik",
      "3.5",
      "Hi",
      "120",
      "250",
      false,
      getProviderServices()));
  list.add(ServiceProviderModel(1, "Wawan Budiman", painter1, "Tukang Cat",
      "3.5", "Hi", "120", "150", false, getProviderServices()));
  list.add(ServiceProviderModel(
      1,
      "Joko Suparjo",
      homeCleaner,
      "Tenaga Kebersihan",
      "4.5",
      "Hi",
      "120",
      "220",
      false,
      getProviderServices()));
  list.add(ServiceProviderModel(1, "Candra Budimanto", plumber, "Tukang Ledeng",
      "4.0", "Hi", "120", "220", false, getProviderServices()));
  return list;
}

List<ServiceProviderModel> getPainters() {
  List<ServiceProviderModel> list = List.empty(growable: true);
  list.add(ServiceProviderModel(2, "Wawan Budiman", painter, "Tukang Cat",
      "3.5", "Hi", "120", "450", false, getProviderServices()));
  list.add(ServiceProviderModel(2, "Wawan Budiman", painter1, "Tukang Cat",
      "3.5", "Hi", "120", "550", false, getProviderServices()));
  list.add(ServiceProviderModel(2, "Joko Suparjo", painter, "Tukang Cat", "4.5",
      "Hi", "120", "500", false, getProviderServices()));
  list.add(ServiceProviderModel(
      2,
      "Candra Budimanto",
      painter,
      "Tukang Listrik",
      "4.0",
      "Hi",
      "120",
      "550",
      false,
      getProviderServices()));
  return list;
}

List<ServiceProviderModel> getCarpenters() {
  List<ServiceProviderModel> list = List.empty(growable: true);
  list.add(ServiceProviderModel(3, "Wawan Budiman", carpenter, "Tukang Kayu",
      "3.5", "Hi", "120", "150", false, getProviderServices()));
  list.add(ServiceProviderModel(3, "Wawan Budiman", carpenter, "Tukang Kayu",
      "3.5", "Hi", "120", "100", false, getProviderServices()));
  list.add(ServiceProviderModel(3, "Joko Suparjo", carpenter, "Tukang Kayu",
      "4.5", "Hi", "120", "250", false, getProviderServices()));
  list.add(ServiceProviderModel(3, "Candra Budimanto", carpenter, "Tukang Kayu",
      "4.0", "Hi", "120", "190", false, getProviderServices()));
  return list;
}

List<ServiceProviderModel> getHomeCleaning() {
  List<ServiceProviderModel> list = List.empty(growable: true);
  list.add(ServiceProviderModel(
    4,
    "Aji Effendy",
    homeCleaner,
    "Tenaga Kebersihan",
    "3.5",
    "Tenaga kebersihan bertanggung jawab untuk menjaga kebersihan dan kerapihan di properti hunian maupun komersial. Mereka membersihkan, merapikan, dan merawat area seperti kamar, ruang kerja, dan fasilitas umum. Selain itu, mereka juga memastikan perlengkapan kebersihan tersedia dan melaporkan kerusakan atau kebutuhan perbaikan kepada manajemen. Tenaga kebersihan berperan penting dalam menciptakan lingkungan yang nyaman dan higienis bagi penghuni atau pengguna.",
    "1000",
    "150",
    true,
    getProviderServices(),
  ));
  list.add(ServiceProviderModel(
    4,
    "Eko Prasetyo",
    painter,
    "Cat Rumah",
    "3.5",
    "Tukang cat bertanggung jawab untuk mengecat dan memperbaiki permukaan interior maupun eksterior pada properti hunian dan komersial. Mereka mempersiapkan permukaan dengan membersihkan, mengamplas, atau memperbaiki area yang rusak sebelum mengecat. Selain itu, tukang cat juga memilih dan mencampur cat sesuai kebutuhan, serta memastikan hasil akhir yang rapi dan berkualitas. Mereka berperan penting dalam meningkatkan estetika dan perlindungan permukaan bangunan.",
    "125",
    "100",
    false,
    getProviderServices(),
  ));
  list.add(ServiceProviderModel(
    4,
    "Joko Suparjo",
    plumber,
    "Perpipaan Rumah",
    "4.5",
    "Tukang ledeng memasang dan memperbaiki sistem perpipaan di properti hunian dan komersial. Mereka juga memasang perlengkapan dan peralatan rumah tangga yang berhubungan dengan sistem pemanas, pendingin, dan sanitasi. Tukang ledeng memasang dan memperbaiki sistem perpipaan di properti hunian dan komersial.",
    "79",
    "250",
    false,
    getProviderServices(),
  ));
  list.add(ServiceProviderModel(
    4,
    "Santi Juliana",
    homeCleaner,
    "Tenaga Kebersihan",
    "4.0",
    "Tenaga kebersihan bertanggung jawab untuk menjaga kebersihan dan kerapihan di properti hunian maupun komersial. Mereka membersihkan, merapikan, dan merawat area seperti kamar, ruang kerja, dan fasilitas umum. Selain itu, mereka juga memastikan perlengkapan kebersihan tersedia dan melaporkan kerusakan atau kebutuhan perbaikan kepada manajemen. Tenaga kebersihan berperan penting dalam menciptakan lingkungan yang nyaman dan higienis bagi penghuni atau pengguna.",
    "90",
    "190",
    true,
    getProviderServices(),
  ));
  list.add(ServiceProviderModel(
    4,
    "Didit Mulyadi",
    painter1,
    "Cat Rumah",
    "4.0",
    "Tukang cat bertanggung jawab untuk mengecat dan memperbaiki permukaan interior maupun eksterior pada properti hunian dan komersial. Mereka mempersiapkan permukaan dengan membersihkan, mengamplas, atau memperbaiki area yang rusak sebelum mengecat. Selain itu, tukang cat juga memilih dan mencampur cat sesuai kebutuhan, serta memastikan hasil akhir yang rapi dan berkualitas. Mereka berperan penting dalam meningkatkan estetika dan perlindungan permukaan bangunan.",
    "100",
    "190",
    false,
    getProviderServices(),
  ));
  return list;
}

List<ServiceProviderModel> getLikedServices() {
  List<ServiceProviderModel> list = List.empty(growable: true);
  list.add(ServiceProviderModel(
    0,
    "Aji Effendy",
    homeCleaner,
    "Tenaga Kebersihan",
    "3.5",
    "Tenaga kebersihan bertanggung jawab untuk menjaga kebersihan dan kerapihan di properti hunian maupun komersial. Mereka membersihkan, merapikan, dan merawat area seperti kamar, ruang kerja, dan fasilitas umum. Selain itu, mereka juga memastikan perlengkapan kebersihan tersedia dan melaporkan kerusakan atau kebutuhan perbaikan kepada manajemen. Tenaga kebersihan berperan penting dalam menciptakan lingkungan yang nyaman dan higienis bagi penghuni atau pengguna.",
    "1000",
    "150",
    true,
    getProviderServices(),
  ));
  list.add(ServiceProviderModel(
    1,
    "Santi Juliana",
    painter,
    "Cat Rumah",
    "4.0",
    "Tukang cat bertanggung jawab untuk mengecat dan memperbaiki permukaan interior maupun eksterior pada properti hunian dan komersial. Mereka mempersiapkan permukaan dengan membersihkan, mengamplas, atau memperbaiki area yang rusak sebelum mengecat. Selain itu, tukang cat juga memilih dan mencampur cat sesuai kebutuhan, serta memastikan hasil akhir yang rapi dan berkualitas. Mereka berperan penting dalam meningkatkan estetika dan perlindungan permukaan bangunan.",
    "90",
    "190",
    true,
    getProviderServices(),
  ));
  return list;
}

void addFavouriteProvider(int serviceIndex, int index) {
  likedProviders.add(ServiceProviderModel(
    serviceProviders[serviceIndex].serviceProviders[index].id,
    serviceProviders[serviceIndex].serviceProviders[index].name,
    serviceProviders[serviceIndex].serviceProviders[index].providerImage,
    serviceProviders[serviceIndex].serviceProviders[index].occupation,
    serviceProviders[serviceIndex].serviceProviders[index].star,
    serviceProviders[serviceIndex].serviceProviders[index].detailDescription,
    serviceProviders[serviceIndex].serviceProviders[index].jobs,
    serviceProviders[serviceIndex].serviceProviders[index].perHourPrice,
    true,
    serviceProviders[serviceIndex].serviceProviders[index].providerServices,
  ));
}

void removeFavouriteProvider(int serviceIndex, int index) {
  for (int i = 0; i < likedProviders.length; i++) {
    if (serviceProviders[serviceIndex].serviceProviders[index].name ==
        likedProviders[i].name) {
      likedProviders.removeAt(i);
    }
  }
}
