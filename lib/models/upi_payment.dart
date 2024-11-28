import 'package:home_hub/utils/images.dart';

List<UpiPayment> upiPaymentData = upiPaymentList();

class UpiPayment {
  String? paymentUrl;
  String? PaymentName;

  UpiPayment({this.paymentUrl, this.PaymentName});
}

List<UpiPayment> upiPaymentList() {
  List<UpiPayment> dataList = [];

  dataList.add(UpiPayment(paymentUrl: paytm, PaymentName: "Gopay"));
  dataList.add(UpiPayment(paymentUrl: phonePay, PaymentName: "OVO"));
  dataList.add(UpiPayment(paymentUrl: amazonPay, PaymentName: "ShopeePay"));
  dataList.add(UpiPayment(paymentUrl: freeCharge, PaymentName: "DANA"));
  dataList.add(UpiPayment(paymentUrl: olaMoney, PaymentName: "KerjaPayLater"));

  return dataList;
}
