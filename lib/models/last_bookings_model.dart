import 'package:home_hub/utils/images.dart';

import 'active_bookings_model.dart';

List<LastBookingsModel> lastBooking = getLastBooking();

class LastBookingsModel {
  int id;
  String serviceName;
  String name;
  String date;
  String time;
  String status;
  int price;

  //Todo add Image
  LastBookingsModel(this.id, this.serviceName, this.name, this.date, this.time,
      this.status, this.price);
}

List<LastBookingsModel> getLastBooking() {
  List<LastBookingsModel> list = List.empty(growable: true);
  list.add(
    LastBookingsModel(0, "Pembersihkan Full House", "Jono Cleaning Services",
        "Agt 4,2024", "4am", "Selesai", 2599),
  );
  list.add(
    LastBookingsModel(1, "Pembersihkan Dapur", "Susanti Cleaning Services",
        "Sept 4,2024", "6am", "Dibatalkan", 3000),
  );
  list.add(
    LastBookingsModel(2, "Pembersihan Kamar", "Dedi Cleaning Services",
        "Okt 4,2024", "6am", "Selesai", 2499),
  );
  return list;
}

void againBooking(int id) {
  int newId = activeBooking.last.id++;
  activeBooking.add(
    ActiveBookingsModel(
      newId,
      lastBooking[id].serviceName,
      home,
      lastBooking[id].name,
      lastBooking[id].date,
      lastBooking[id].time,
      "Dalam Proses",
      lastBooking[id].price,
    ),
  );
}
