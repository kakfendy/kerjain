import 'common_model.dart';
import '../utils/images.dart';

List<CommonModel> combosServices = getCombosServices();

List<CommonModel> getCombosServices() {
  List<CommonModel> combosServices = [];
  combosServices.add(CommonModel.withoutIcon("Pengendalian Hama", cleaning));
  combosServices.add(CommonModel.withoutIcon("Pembersihkan Full House", home));
  combosServices
      .add(CommonModel.withoutIcon("Pembersihan Dapur & Kamar Mandi", kitchen));
  return combosServices;
}
