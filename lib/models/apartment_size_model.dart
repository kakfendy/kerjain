List<ApartmentSizeModel> apartmentSizeList = getApartmentSize();

class ApartmentSizeModel {
  String size;
  bool isSelected;

  ApartmentSizeModel(
    this.size,
    this.isSelected,
  );
}

List<ApartmentSizeModel> getApartmentSize() {
  List<ApartmentSizeModel> list = [];
  list.add(ApartmentSizeModel("1  Ruang", false));
  list.add(ApartmentSizeModel("2  Ruang", false));
  list.add(ApartmentSizeModel("2.5  Ruang", false));
  list.add(ApartmentSizeModel("3  Ruang", false));
  list.add(ApartmentSizeModel("3.5  Ruang", false));
  list.add(ApartmentSizeModel("4  Ruang", false));
  list.add(ApartmentSizeModel("4.5  Ruang", false));
  return list;
}
