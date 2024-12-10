import 'package:flutter/material.dart';
import 'package:home_hub/models/service_provider_model.dart';
import 'package:home_hub/utils/images.dart';

List<ServicesModel> serviceProviders = getServices();

class ServicesModel {
  int id;
  String serviceName;
  String subName;
  String shortDescription;
  String serviceImage;
  IconData serviceIcon;
  List<ServiceProviderModel> serviceProviders;
  bool isSelected;

  ServicesModel(this.id, this.serviceName, this.shortDescription, this.subName,
      this.serviceProviders, this.serviceImage, this.serviceIcon,
      {this.isSelected = false});
}

List<ServicesModel> getServices() {
  List<ServicesModel> list = List.empty(growable: true);
  list.add(ServicesModel(
      1,
      "Tukang Ledeng",
      "Membantu Anda dalam urusan pipa ledeng",
      "Tukang Ledeng",
      getPlumbers(),
      plumber,
      Icons.plumbing,
      isSelected: true));
  list.add(ServicesModel(
      2,
      "Tukang Listrik",
      "Membantu Anda dalam urusan listrik dan perkabelan",
      "Tukang Listrik",
      getElectricians(),
      electrician,
      Icons.cable_outlined));
  list.add(ServicesModel(
      3,
      "Tukang Cat",
      "Membantu Anda dalam urusan pengecatan dinding indoor dan eksdoor",
      "Pengecatan",
      getPainters(),
      painter,
      Icons.format_paint));
  list.add(ServicesModel(
      4,
      "Tukang Kayu",
      "Membantu Anda dalam urusan bahan kayu dan pemotongan kayu",
      "Tukang Kayu",
      getCarpenters(),
      carpenter,
      Icons.other_houses_sharp));
  list.add(ServicesModel(
      5,
      "Tenaga Kebersihan",
      "Membantu Anda dalam urusan kebersihan ruangan",
      "Kebersihan",
      getHomeCleaning(),
      homeCleaner,
      Icons.cleaning_services_sharp));
  list.add(ServicesModel(
      5,
      "Cuci Mobil dan Kendaraan",
      "Membantu Anda dalam urusan cuci kendaraan bermotor dan mobil",
      "Cuci Kendaraan",
      getHomeCleaning(),
      painter1,
      Icons.car_repair_outlined));
  list.add(ServicesModel(
      6,
      "Bengkel Kendaraan",
      "Membantu Anda dalam urusan servis perbaikan kendaraan bermotor dan mobil",
      "Montir",
      getElectricians(),
      electrician,
      Icons.home_repair_service));
  return list;
}

void setLiked(int serviceIndex, int index) {
  if (serviceProviders[serviceIndex].serviceProviders[index].isLiked) {
    serviceProviders[serviceIndex].serviceProviders[index].isLiked = false;
    removeFavouriteProvider(serviceIndex, index);
  } else {
    serviceProviders[serviceIndex].serviceProviders[index].isLiked = true;
    addFavouriteProvider(serviceIndex, index);
  }
}
