import '../utils/images.dart';

List<CustomerReviewModel> customerReviews = getCustomerReviews();

class CustomerReviewModel {
  int id;
  String customerName;
  double rating;
  String detailReview;
  String customerImage;

  CustomerReviewModel(this.id, this.customerName, this.rating,
      this.detailReview, this.customerImage);
}

List<CustomerReviewModel> getCustomerReviews() {
  List<CustomerReviewModel> list = List.empty(growable: true);
  list.add(
    CustomerReviewModel(
      1,
      "Aji Effendy",
      3,
      "Aplikasi ini luar biasa! Pengalaman saya menggunakannya sangat memuaskan. Saya memakainya setiap hari dan benar-benar menyukainya. Sangat membantu dan menyenangkan untuk digunakan dalam aktivitas sehari-hari!",
      contractor,
    ),
  );
  list.add(
    CustomerReviewModel(
      2,
      "Santoso Eko Prasetyo",
      4,
      "Aplikasi terbaik untuk layanan, dan saya merasa sangat mudah menyelesaikan semua tugas rumah tangga saya dengan aplikasi ini. Saya sangat menyukai aplikasi ini!",
      painter,
    ),
  );
  list.add(
    CustomerReviewModel(
      3,
      "Linda Subandi",
      5,
      "Aplikasi ini luar biasa! Pengalaman saya menggunakannya sangat memuaskan. Saya memakainya setiap hari dan benar-benar menyukainya. Sangat membantu dan menyenangkan untuk digunakan dalam aktivitas sehari-hari!",
      painter1,
    ),
  );
  return list;
}
