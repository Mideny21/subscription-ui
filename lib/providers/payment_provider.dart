import 'package:flutter/foundation.dart';

class PaymentButton extends ChangeNotifier {
  int _paymentIndex = 0;
  int get paymentIndex => _paymentIndex;

  void setPaymentIndex(int index) {
    _paymentIndex = index;
    notifyListeners();
  }
}
