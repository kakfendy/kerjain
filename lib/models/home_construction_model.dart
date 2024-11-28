import 'package:flutter/material.dart';

import 'common_model.dart';

List<CommonModel> homeConstruction = getHomeConstruction();

List<CommonModel> getHomeConstruction() {
  List<CommonModel> homeConstruction = [];
  homeConstruction.add(CommonModel.withoutImage(
      "Kontruksi", Icon(Icons.construction, size: 35)));
  homeConstruction.add(
      CommonModel.withoutImage("Arsitek", Icon(Icons.architecture, size: 35)));
  homeConstruction.add(CommonModel.withoutImage(
      "Desain Interior", Icon(Icons.house_siding, size: 35)));
  homeConstruction.add(CommonModel.withoutImage(
      "Perabotan", Icon(Icons.vertical_split_rounded, size: 35)));
  homeConstruction.add(
      CommonModel.withoutImage("Kontraktor", Icon(Icons.person, size: 35)));

  return homeConstruction;
}
