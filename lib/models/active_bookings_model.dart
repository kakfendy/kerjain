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
    ActiveBookingsModel(0, "Full House Cleaning", home,
        "Jono Cleaning Services", "Jan 4,2022", "4am", "In Process", 2599),
  );
  list.add(
    ActiveBookingsModel(1, "Kitchen Cleaning", home,
        "Susanti Cleaning Services", "Dec 4,2022", "6am", "Assigned", 3000),
  );
  list.add(
    ActiveBookingsModel(2, "Bedroom Cleaning", home, "Dedi Cleaning Services",
        "Feb 17,2022", "6am", "Assigned", 2499),
  );
  return list;
}

void cancelBooking(int id) {
  activeBooking.removeAt(id);
}