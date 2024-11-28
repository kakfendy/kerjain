import 'package:home_hub/utils/images.dart';

List<ActiveBookingsModel> activeBooking = getActiveBooking();

class ActiveBookingsModel {
  int id;
  String serviceName;
  String serviceImage;
  String name;
  String date;
  String time;
  String status;
  int price;

  ActiveBookingsModel(this.id, this.serviceName, this.serviceImage, this.name,
      this.date, this.time, this.status, this.price);
}

List<ActiveBookingsModel> getActiveBooking() {
  List<ActiveBookingsModel> list = List.empty(growable: true);
  list.add(
    ActiveBookingsModel(0, "Pembersihkan Full House", home,
        "Jono Cleaning Services", "Jan 4,2022", "4am", "Dalam Proses", 2599),
  );
  list.add(
    ActiveBookingsModel(1, "Pembersihkan Dapur", home,
        "Susanti Cleaning Services", "Dec 4,2022", "6am", "Dijadwalkan", 3000),
  );
  list.add(
    ActiveBookingsModel(2, "Pembersihan Kamar", home, "Dedi Cleaning Services",
        "Feb 17,2022", "6am", "Dijadwalkan", 2499),
  );
  return list;
}

void cancelBooking(int id) {
  activeBooking.removeAt(id);
}
